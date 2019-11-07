#include <eosio/chain/webassembly/wavm_priv.hpp>
#include <eosio/chain/wasm_eosio_constraints.hpp>
#include <eosio/chain/wasm_eosio_injection.hpp>
#include <eosio/chain/priv_apply_context.hpp>
#include <eosio/chain/exceptions.hpp>

#include "IR/Module.h"
#include "Platform/Platform.h"
#include "WAST/WAST.h"
#include "IR/Operators.h"
#include "IR/Validate.h"
#include "Runtime/Linker.h"
#include "Runtime/Intrinsics.h"

#include <mutex>

using namespace IR;
using namespace Runtime;

namespace eosio { namespace chain { namespace webassembly { namespace wavm {

running_instance_priv_context the_running_instance_priv_context;

class wavm_instantiated_module : public priv_wasm_instantiated_module_interface {
   public:
      wavm_instantiated_module(ModuleInstance* instance, std::unique_ptr<Module> module, std::vector<uint8_t> initial_mem) :
         _initial_memory(initial_mem),
         _instance(instance),
         _module(std::move(module))
      {}

      void priv_apply(priv_apply_context& context)  {
         std::cout << "           E O S I O           :    [START] [wavm] [call->apply]:" << std::endl;
         vector<Value> args = {Value(uint64_t(context.receiver)),
	                       Value(uint64_t(context.act.account)),
                               Value(uint64_t(context.act.name))};
         call("apply", args, context);
         std::cout << "           E O S I O           :    [END] [wavm] [call->apply]:"  << std::endl;
      }
      // void priv_apply(priv_apply_context& context) override {
      //    std::cout << "           E O S I O           :    [START] [wavm] [priv_call->apply]:" << std::endl;
      //    vector<Value> args = {Value(uint64_t(context.receiver)),
	   //                     Value(uint64_t(context.act.account)),
      //                          Value(uint64_t(context.act.name))};
      //    std::cout << "           E O S I O           :    [END] [wavm] [priv_call->apply]:" << std::endl;

      //    priv_call("priv_apply", args, context);
      // }

   private:
      void call(const string &entry_point, const vector<Value> &args, priv_apply_context &context)
      {
         std::cout << "           E O S I O           :    [START ] [wavm] [call]:" << std::endl;

         try {
            FunctionInstance* call = asFunctionNullable(getInstanceExport(_instance,entry_point));
            if( !call )
               return;

            EOS_ASSERT( getFunctionType(call)->parameters.size() == args.size(), wasm_exception, "" );

            //The memory instance is reused across all wavm_instantiated_modules, but for wasm instances
            // that didn't declare "memory", getDefaultMemory() won't see it
            MemoryInstance* default_mem = getDefaultMemory(_instance);
            std::cout << "           E O S I O           :    [START 1] [wavm] [call]:" << std::endl;

            if(default_mem) {
               std::cout << "           E O S I O           :    [START 2] [wavm] [call]:" << std::endl;

               //reset memory resizes the sandbox'ed memory to the module's init memory size and then
               // (effectively) memzeros it all
               resetMemory(default_mem, _module->memories.defs[0].type);

               char* memstart = &memoryRef<char>(getDefaultMemory(_instance), 0);
               memcpy(memstart, _initial_memory.data(), _initial_memory.size());
            }
            std::cout << "           E O S I O           :    [START 2-1] [wavm] [call]:" << std::endl;

            the_running_instance_priv_context.memory = default_mem;
            the_running_instance_priv_context.priv_apply_ctx = &context;
            std::cout << "           E O S I O           :    [START 2-2] [wavm] [call]:" << std::endl;

            resetGlobalInstances(_instance);
            std::cout << "           E O S I O           :    [START 3] [wavm] [call]:" << std::endl;

            runInstanceStartFunc(_instance);
            Runtime::invokeFunction(call,args);
            std::cout << "           E O S I O           :    [START 4] [wavm] [call]:" << std::endl;
         } catch( const wasm_exit& e ) {
         } catch( const Runtime::Exception& e ) {
             FC_THROW_EXCEPTION(wasm_execution_error,
                         "cause: ${cause}\n${callstack}",
                         ("cause", string(describeExceptionCause(e.cause)))
                         ("callstack", e.callStack));
         } FC_CAPTURE_AND_RETHROW()
         std::cout << "           E O S I O           :    [END] [wavm] [call]:" << std::endl;
      }

      // void priv_call(const string &entry_point, const vector <Value> &args, priv_apply_context &context) {
      //    try {
      //       FunctionInstance* call = asFunctionNullable(getInstanceExport(_instance,entry_point));
      //       if( !call )
      //          return;

      //       EOS_ASSERT( getFunctionType(call)->parameters.size() == args.size(), wasm_exception, "" );

      //       //The memory instance is reused across all wavm_instantiated_modules, but for wasm instances
      //       // that didn't declare "memory", getDefaultMemory() won't see it
      //       MemoryInstance* default_mem = getDefaultMemory(_instance);
      //       if(default_mem) {
      //          //reset memory resizes the sandbox'ed memory to the module's init memory size and then
      //          // (effectively) memzeros it all
      //          resetMemory(default_mem, _module->memories.defs[0].type);

      //          char* memstart = &memoryRef<char>(getDefaultMemory(_instance), 0);
      //          memcpy(memstart, _initial_memory.data(), _initial_memory.size());
      //       }

      //       the_running_instance_priv_context.memory = default_mem;
      //       the_running_instance_priv_context.priv_apply_ctx = &context;

      //       resetGlobalInstances(_instance);
      //       runInstanceStartFunc(_instance);
      //       Runtime::invokeFunction(call,args);
      //    } catch( const wasm_exit& e ) {
      //    } catch( const Runtime::Exception& e ) {
      //        FC_THROW_EXCEPTION(wasm_execution_error,
      //                    "cause: ${cause}\n${callstack}",
      //                    ("cause", string(describeExceptionCause(e.cause)))
      //                    ("callstack", e.callStack));
      //    } FC_CAPTURE_AND_RETHROW()
      // }

      std::vector<uint8_t>     _initial_memory;
      //naked pointer because ModuleInstance is opaque
      //_instance is deleted via WAVM's object garbage collection when wavm_rutime is deleted
      ModuleInstance*          _instance;
      std::unique_ptr<Module>  _module;
};


wavm_runtime::runtime_guard::runtime_guard() {
   // TODO clean this up
   //check_wasm_opcode_dispositions();
   Runtime::init();
}

wavm_runtime::runtime_guard::~runtime_guard() {
   Runtime::freeUnreferencedObjects({});
}

static weak_ptr<wavm_runtime::runtime_guard> __runtime_guard_ptr;
static std::mutex __runtime_guard_lock;

wavm_runtime::wavm_runtime() {
   std::lock_guard<std::mutex> l(__runtime_guard_lock);
   if (__runtime_guard_ptr.use_count() == 0) {
      _runtime_guard = std::make_shared<runtime_guard>();
      __runtime_guard_ptr = _runtime_guard;
   } else {
      _runtime_guard = __runtime_guard_ptr.lock();
   }
}

wavm_runtime::~wavm_runtime() {
}

std::unique_ptr<priv_wasm_instantiated_module_interface> wavm_runtime::instantiate_module(const char *code_bytes, size_t code_size, std::vector<uint8_t> initial_memory)
{
   std::unique_ptr<Module> module = std::make_unique<Module>();
   try {
      std::cout << "           E O S I O           :    [Start] [wavm.cpp] [instantiate_module] [code.size]:" << code_size << std::endl;
      Serialization::MemoryInputStream stream((const U8*)code_bytes, code_size);
      WASM::serialize(stream, *module);
   } catch(const Serialization::FatalSerializationException& e) {
      EOS_ASSERT(false, wasm_serialization_error, e.message.c_str());
   } catch(const IR::ValidationException& e) {
      EOS_ASSERT(false, wasm_serialization_error, e.message.c_str());
   }

   eosio::chain::webassembly::common::root_resolver resolver;
   LinkResult link_result = linkModule(*module, resolver);
   ModuleInstance *instance = instantiateModule(*module, std::move(link_result.resolvedImports));
   EOS_ASSERT(instance != nullptr, wasm_exception, "Fail to Instantiate WAVM Module");

   return std::make_unique<wavm_instantiated_module>(instance, std::move(module), initial_memory);
}

void wavm_runtime::immediately_exit_currently_running_module() {
#ifdef _WIN32
   throw wasm_exit();
#else
   Platform::immediately_exit();
#endif
}

}}}}
