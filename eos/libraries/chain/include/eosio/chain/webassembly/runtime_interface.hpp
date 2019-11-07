#pragma once
#include <vector>
#include <memory>

namespace eosio { namespace chain {

class apply_context;
class priv_apply_context;

class wasm_instantiated_module_interface {
   public:
      virtual void apply(apply_context& context) = 0;

      virtual ~wasm_instantiated_module_interface();
};

class wasm_runtime_interface {
   public:
      virtual std::unique_ptr<wasm_instantiated_module_interface> instantiate_module(const char* code_bytes, size_t code_size, std::vector<uint8_t> initial_memory) = 0;

      //immediately exit the currently running wasm_instantiated_module_interface. Yep, this assumes only one can possibly run at a time.
      virtual void immediately_exit_currently_running_module() = 0;

      virtual ~wasm_runtime_interface();
};

/**
 *  ...  priv 
 */

class priv_wasm_instantiated_module_interface
{
public:

   virtual void priv_apply(priv_apply_context &context) = 0;

   virtual ~priv_wasm_instantiated_module_interface();
};

class priv_wasm_runtime_interface
{
public:
   virtual std::unique_ptr<priv_wasm_instantiated_module_interface> priv_instantiate_module(const char *code_bytes, size_t code_size, std::vector<uint8_t> initial_memory) = 0;

   //immediately exit the currently running wasm_instantiated_module_interface. Yep, this assumes only one can possibly run at a time.
   virtual void priv_immediately_exit_currently_running_module() = 0;

   virtual ~priv_wasm_runtime_interface();
};
}}