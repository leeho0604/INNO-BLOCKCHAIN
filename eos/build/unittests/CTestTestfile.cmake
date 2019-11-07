# CMake generated Testfile for 
# Source directory: /home/ghlee/INNO-RTFDocs/eos/unittests
# Build directory: /home/ghlee/INNO-RTFDocs/eos/build/unittests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(abi_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=abi_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(abi_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=abi_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(api_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=api_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(api_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=api_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(auth_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=auth_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(auth_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=auth_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(block_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=block_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(block_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=block_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(block_timestamp_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=block_timestamp_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(block_timestamp_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=block_timestamp_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(bootseq_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=bootseq_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(bootseq_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=bootseq_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(currency_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=currency_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(currency_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=currency_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(database_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=database_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(database_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=database_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(delay_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=delay_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(delay_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=delay_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(eosio_token_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=eosio_token_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(eosio_token_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=eosio_token_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(forked_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=forked_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(forked_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=forked_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(message_buffer_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=message_buffer_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(message_buffer_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=message_buffer_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(misc_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=misc_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(misc_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=misc_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(payloadless_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=payloadless_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(payloadless_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=payloadless_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(producer_schedule_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=producer_schedule_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(producer_schedule_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=producer_schedule_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(ram_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=ram_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(ram_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=ram_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(resource_limits_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=resource_limits_test" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(resource_limits_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=resource_limits_test" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(snapshot_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=snapshot_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(snapshot_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=snapshot_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(special_account_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=special_account_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(special_account_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=special_account_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(wasm_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=wasm_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(wasm_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=wasm_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
add_test(whitelist_blacklist_unit_test_wavm "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=whitelist_blacklist_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(whitelist_blacklist_unit_test_wabt "/home/ghlee/INNO-RTFDocs/eos/build/unittests/unit_test" "--run_test=whitelist_blacklist_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
subdirs("test-contracts")
subdirs("contracts")
