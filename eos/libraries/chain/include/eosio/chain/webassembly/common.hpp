#pragma once

#include <eosio/chain/wasm_interface.hpp>
#include <eosio/chain/wasm_interface_priv.hpp>
#include <eosio/chain/wasm_eosio_constraints.hpp>
#include <typeinfo>

#define EOSIO_INJECTED_MODULE_NAME "eosio_injection"

using namespace fc;

namespace eosio { namespace chain { 

   class apply_context;
   class transaction_context;
   class priv_apply_context;
   class priv_transaction_context;

   template<typename T>
   struct class_from_wasm {
      /**
       * by default this is just constructing an object
       * @param wasm - the wasm_interface to use
       * @return
       */
      static auto value(apply_context& ctx) {
         //std::cout << "           E O S I O           :    [START] [common] [class_from_wasm] [typename T]:" << typeid(T).name() << std::endl;
         return T(ctx);
      }
   };

   template <typename T>
   struct class_from_priv_wasm
   {
      /**
       * by default this is just constructing an object
       * @param wasm - the wasm_interface to use
       * @return
       */
      static auto value(priv_apply_context &ctx)
      {
         //std::cout << "           E O S I O           :    [START] [common] [class_from_priv_wasm] [typename T]:" << typeid(T).name() << std::endl;
         return T(ctx);
      }
   };


   template<>
   struct class_from_wasm<transaction_context> {
      /**
       * by default this is just constructing an object
       * @param wasm - the wasm_interface to use
       * @return
       */
      template <typename ApplyCtx>
      static auto &value(ApplyCtx& ctx) {
         //std::cout << "           E O S I O           :    [START] [common] [class_from_wasm] [typename ApplyCtx]:" << typeid(ApplyCtx).name() << std::endl;

         return ctx.trx_context;
      }
   };

   template <>
   struct class_from_priv_wasm<priv_transaction_context>
   {
      /**
       * by default this is just constructing an object
       * @param wasm - the wasm_interface to use
       * @return
       */
      template <typename PR_ApplyCtx>
      static auto &value(PR_ApplyCtx &ctx)
      {
         //std::cout << "           E O S I O           :    [START] [common] [class_from_priv_wasm] [typename PR_ApplyCtx]:" << typeid(PR_ApplyCtx).name() << std::endl;
         return ctx.trx_context;
      }
   };

   template<>
   struct class_from_wasm<apply_context> {
      /**
       * Don't construct a new apply_context, just return a reference to the existing ont
       * @param wasm
       * @return
       */
      static auto &value(apply_context& ctx) 
      {
         //std::cout << "           E O S I O           :    [START] [common] [class_from_wasm] [apply_context 1]:" << std::endl;

         return ctx;
      }
   };

   template <>
   struct class_from_priv_wasm<priv_apply_context>
   {
      /**
       * Don't construct a new apply_context, just return a reference to the existing ont
       * @param wasm
       * @return
       */
      static auto &value(priv_apply_context& ctx)
      {
         //std::cout << "           E O S I O           :    [START] [common] [class_from_priv_wasm] [privapply_context 1]:" << std::endl;

         return ctx;
      }
   };

   /**
    * class to represent an in-wasm-memory array
    * it is a hint to the transcriber that the next parameter will
    * be a size (data bytes length) and that the pair are validated together
    * This triggers the template specialization of intrinsic_invoker_impl
    * @tparam T
    */
   template<typename T>
   struct array_ptr {
      explicit array_ptr (T * value) : value(value) {
         //std::cout << "           E O S I O           :    [START] [common] [array_ptr] [typename T]:" << typeid(T).name() << std::endl;
      }

      typename std::add_lvalue_reference<T>::type operator*() const {
         return *value;
      }

      T *operator->() const noexcept {
         return value;
      }

      template<typename U>
      operator U *() const {
         return static_cast<U *>(value);
      }

      T *value;
   }; 

   /**
    * class to represent an in-wasm-memory char array that must be null terminated
    */
   struct null_terminated_ptr {
      explicit null_terminated_ptr(char* value) : value(value) {}

      typename std::add_lvalue_reference<char>::type operator*() const {
         return *value;
      }

      char *operator->() const noexcept {
         return value;
      }

      template<typename U>
      operator U *() const {
         return static_cast<U *>(value);
      }

      char *value;
   };

 } } // eosio::chain
