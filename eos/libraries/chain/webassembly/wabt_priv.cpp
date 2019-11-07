#include <eosio/chain/webassembly/wabt_priv.hpp>
#include <eosio/chain/priv_apply_context.hpp>
#include <eosio/chain/wasm_eosio_constraints.hpp>

//wabt includes
#include <src/interp.h>
#include <src/binary-reader-interp.h>
#include <src/error-formatter.h>

namespace eosio { namespace chain { namespace webassembly { namespace wabt_runtime {

//yep 🤮
static priv_wabt_apply_instance_vars* priv_static_wabt_vars;

using namespace wabt;
using namespace wabt::interp;
namespace wasm_constraints = eosio::chain::wasm_constraints;

// PRIV
class priv_wabt_instantiated_module : public priv_wasm_instantiated_module_interface {
   public:
      priv_wabt_instantiated_module(std::unique_ptr<interp::Environment> e, std::vector<uint8_t> initial_mem, interp::DefinedModule *mod)
          : __env(move(e)), __instatiated_module(mod), __initial_memory(initial_mem),
            __executor(__env.get(), nullptr, Thread::Options(64 * 1024, wasm_constraints::maximum_call_depth + 2))
      {
         //std::cout << "Check ENV " << std::endl;
         for(Index i = 0; i < __env->GetGlobalCount(); ++i) {
            if(__env->GetGlobal(i)->mutable_ == false)
               continue;
            __initial_globals.emplace_back(__env->GetGlobal(i), __env->GetGlobal(i)->typed_value);
         }
         
         if(__env->GetMemoryCount())
            __initial_memory_configuration = __env->GetMemory(0)->page_limits;
      }

      void priv_apply(priv_apply_context& context) override {
         //reset mutable globals
         std::cout << "           E O S I O           :    [Start] [wabt] [priv_apply] || 111  " << std::endl;

         for(const auto& mg : __initial_globals)
            mg.first->typed_value = mg.second;

         priv_wabt_apply_instance_vars this_run_vars{nullptr, context};
         priv_static_wabt_vars = &this_run_vars;
         //reset memory to inital size & copy back in initial data
         if(__env->GetMemoryCount()) {
            Memory* memory = this_run_vars.memory = __env->GetMemory(0);
            memory->page_limits = __initial_memory_configuration;
            memory->data.resize(__initial_memory_configuration.initial * WABT_PAGE_SIZE);
            memset(memory->data.data(), 0, memory->data.size());
            memcpy(memory->data.data(), __initial_memory.data(), __initial_memory.size());
         }

         __params[0].set_i64(uint64_t(context.receiver));
         __params[1].set_i64(uint64_t(context.act.account));
         __params[2].set_i64(uint64_t(context.act.name));
         std::cout << "           E O S I O           :    [Start] [wabt] [priv_apply] || 222 " << std::endl;
         ExecResult res = __executor.RunStartFunction(__instatiated_module);
         EOS_ASSERT( res.result == interp::Result::Ok, wasm_execution_error, "wabt start function failure (${s})", ("s", ResultToString(res.result)) );
         std::cout << "           E O S I O           :    [Start] [wabt] [priv_apply] || 333 " << context.act.name.to_string() << std::endl;
         res = __executor.RunExportByName(__instatiated_module, "apply", __params);
         EOS_ASSERT( res.result == interp::Result::Ok, wasm_execution_error, "wabt execution failure (${s})", ("s", ResultToString(res.result)) );
         std::cout << "           E O S I O           :    [End] [wabt] [priv_apply]" << std::endl;
      }

   private:
      std::unique_ptr<interp::Environment>              __env;
      DefinedModule*                                    __instatiated_module;  //this is owned by the Environment
      std::vector<uint8_t>                              __initial_memory;
      TypedValues                                       __params{3, TypedValue(Type::I64)};
      std::vector<std::pair<Global*, TypedValue>>       __initial_globals;
      Limits                                            __initial_memory_configuration;
      Executor                                          __executor;
};

priv_wabt_runtime::priv_wabt_runtime() {}

// PRIV
std::unique_ptr<priv_wasm_instantiated_module_interface> priv_wabt_runtime::priv_instantiate_module(const char *code_bytes, size_t code_size, std::vector<uint8_t> initial_memory)
{
   std::cout << "           E O S I O           :    [Start] [wavt.cpp] [instantiate_module] [code.size]:" << code_size << std::endl;
   std::unique_ptr<interp::Environment> env = std::make_unique<interp::Environment>();
   for (auto it = priv_intrinsic_registrator::get_map().begin(); it != priv_intrinsic_registrator::get_map().end(); ++it)
   {
      interp::HostModule *_host_module = env->AppendHostModule(it->first);
      //std::cout << "map SIZE:" <<it->second.size() << std::endl;
      for (auto itf = it->second.begin(); itf != it->second.end(); ++itf)
      {
         _host_module->AppendFuncExport(itf->first, itf->second.sig, [fn = itf->second.func](const auto *f, const auto *fs, const auto &args, auto &res) {
            //std::cout << "           E O S I O           :    [Start] [priv AppendFuncExport Call Back ] " << std::endl;
            TypedValue ret = fn(*priv_static_wabt_vars, args);
            //std::cout << "           E O S I O           :    [Start] [Priv][func -> field name ] " << f->field_name << std::endl;

            if (ret.type != Type::Void)
               res[0] = ret;
            return interp::Result::Ok;
         });
      }
   }

   interp::DefinedModule *instantiated_module = nullptr;
   wabt::Errors errors;

   wabt::Result res = ReadBinaryInterp(env.get(), code_bytes, code_size, read_binary_options, &errors, &instantiated_module);
   EOS_ASSERT(Succeeded(res), wasm_execution_error, "Error building wabt interp: ${e}", ("e", wabt::FormatErrorsToString(errors, Location::Type::Binary)));

   return std::make_unique<priv_wabt_instantiated_module>(std::move(env), initial_memory, instantiated_module);
}

// void wabt_runtime::immediately_exit_currently_running_module() {
//    throw wasm_exit();
// }
void priv_wabt_runtime::priv_immediately_exit_currently_running_module()
{
   throw wasm_exit();
}
}}}}
