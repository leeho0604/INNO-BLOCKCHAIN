# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ghlee/INNO-RTFDocs/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ghlee/INNO-RTFDocs/eos/build

# Include any dependencies generated for this target.
include programs/cleos/CMakeFiles/cleos.dir/depend.make

# Include the progress variables for this target.
include programs/cleos/CMakeFiles/cleos.dir/progress.make

# Include the compile flags for this target's objects.
include programs/cleos/CMakeFiles/cleos.dir/flags.make

programs/cleos/CMakeFiles/cleos.dir/main.cpp.o: programs/cleos/CMakeFiles/cleos.dir/flags.make
programs/cleos/CMakeFiles/cleos.dir/main.cpp.o: ../programs/cleos/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/cleos/CMakeFiles/cleos.dir/main.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cleos.dir/main.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/programs/cleos/main.cpp

programs/cleos/CMakeFiles/cleos.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cleos.dir/main.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/programs/cleos/main.cpp > CMakeFiles/cleos.dir/main.cpp.i

programs/cleos/CMakeFiles/cleos.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cleos.dir/main.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/programs/cleos/main.cpp -o CMakeFiles/cleos.dir/main.cpp.s

programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.requires:

.PHONY : programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.requires

programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.provides: programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.requires
	$(MAKE) -f programs/cleos/CMakeFiles/cleos.dir/build.make programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.provides.build
.PHONY : programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.provides

programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.provides.build: programs/cleos/CMakeFiles/cleos.dir/main.cpp.o


programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o: programs/cleos/CMakeFiles/cleos.dir/flags.make
programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o: ../programs/cleos/httpc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cleos.dir/httpc.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/programs/cleos/httpc.cpp

programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cleos.dir/httpc.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/programs/cleos/httpc.cpp > CMakeFiles/cleos.dir/httpc.cpp.i

programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cleos.dir/httpc.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/programs/cleos/httpc.cpp -o CMakeFiles/cleos.dir/httpc.cpp.s

programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.requires:

.PHONY : programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.requires

programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.provides: programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.requires
	$(MAKE) -f programs/cleos/CMakeFiles/cleos.dir/build.make programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.provides.build
.PHONY : programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.provides

programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.provides.build: programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o


programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o: programs/cleos/CMakeFiles/cleos.dir/flags.make
programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o: ../programs/cleos/help_text.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cleos.dir/help_text.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/programs/cleos/help_text.cpp

programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cleos.dir/help_text.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/programs/cleos/help_text.cpp > CMakeFiles/cleos.dir/help_text.cpp.i

programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cleos.dir/help_text.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/programs/cleos/help_text.cpp -o CMakeFiles/cleos.dir/help_text.cpp.s

programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.requires:

.PHONY : programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.requires

programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.provides: programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.requires
	$(MAKE) -f programs/cleos/CMakeFiles/cleos.dir/build.make programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.provides.build
.PHONY : programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.provides

programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.provides.build: programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o


# Object files for target cleos
cleos_OBJECTS = \
"CMakeFiles/cleos.dir/main.cpp.o" \
"CMakeFiles/cleos.dir/httpc.cpp.o" \
"CMakeFiles/cleos.dir/help_text.cpp.o"

# External object files for target cleos
cleos_EXTERNAL_OBJECTS =

programs/cleos/cleos: programs/cleos/CMakeFiles/cleos.dir/main.cpp.o
programs/cleos/cleos: programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o
programs/cleos/cleos: programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o
programs/cleos/cleos: programs/cleos/CMakeFiles/cleos.dir/build.make
programs/cleos/cleos: libraries/appbase/libappbase.a
programs/cleos/cleos: plugins/chain_api_plugin/libchain_api_plugin.a
programs/cleos/cleos: plugins/producer_plugin/libproducer_plugin.a
programs/cleos/cleos: plugins/chain_plugin/libchain_plugin.a
programs/cleos/cleos: plugins/http_plugin/libhttp_plugin.a
programs/cleos/cleos: libraries/chain/libeosio_chain.a
programs/cleos/cleos: libraries/fc/libfc.a
programs/cleos/cleos: plugins/priv_chain_plugin/libpriv_chain_plugin.a
programs/cleos/cleos: plugins/http_client_plugin/libhttp_client_plugin.a
programs/cleos/cleos: libraries/appbase/libappbase.a
programs/cleos/cleos: libraries/chain/libeosio_chain.a
programs/cleos/cleos: libraries/chainbase/libchainbase.a
programs/cleos/cleos: libraries/wasm-jit/Source/WAST/libWAST.a
programs/cleos/cleos: libraries/wasm-jit/Source/WASM/libWASM.a
programs/cleos/cleos: libraries/wasm-jit/Source/Runtime/libRuntime.a
programs/cleos/cleos: libraries/wasm-jit/Source/IR/libIR.a
programs/cleos/cleos: libraries/wasm-jit/Source/Logging/libLogging.a
programs/cleos/cleos: libraries/wasm-jit/Source/Platform/libPlatform.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMPasses.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMipo.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMInstrumentation.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMVectorize.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMIRReader.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMAsmParser.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMLinker.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMMCJIT.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMExecutionEngine.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMRuntimeDyld.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMDebugInfoDWARF.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86CodeGen.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMAsmPrinter.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMDebugInfoCodeView.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMDebugInfoMSF.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMGlobalISel.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMSelectionDAG.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMCodeGen.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMScalarOpts.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMInstCombine.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMBitWriter.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMTransformUtils.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMTarget.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMAnalysis.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMProfileData.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86AsmParser.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86Desc.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86AsmPrinter.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86Utils.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMObject.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMMCParser.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMBitReader.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMCore.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86Disassembler.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMX86Info.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMMCDisassembler.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMMC.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMSupport.a
programs/cleos/cleos: /usr/lib/llvm-4.0/lib/libLLVMDemangle.a
programs/cleos/cleos: libraries/softfloat/libsoftfloat.a
programs/cleos/cleos: libraries/builtins/libbuiltins.a
programs/cleos/cleos: libraries/wabt/libwabt.a
programs/cleos/cleos: libraries/fc/libfc.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_date_time.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_filesystem.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_system.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_chrono.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_program_options.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_unit_test_framework.a
programs/cleos/cleos: /home/ghlee/src/boost_1_67_0/lib/libboost_iostreams.a
programs/cleos/cleos: /usr/lib/x86_64-linux-gnu/libssl.a
programs/cleos/cleos: /usr/lib/x86_64-linux-gnu/libcrypto.a
programs/cleos/cleos: /usr/lib/x86_64-linux-gnu/libz.so
programs/cleos/cleos: libraries/fc/secp256k1/libsecp256k1.a
programs/cleos/cleos: /usr/lib/x86_64-linux-gnu/libgmp.a
programs/cleos/cleos: programs/cleos/CMakeFiles/cleos.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cleos"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cleos.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && mkdir -p /home/ghlee/INNO-RTFDocs/eos/build/bin
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && /usr/bin/cmake -E copy /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos/cleos /home/ghlee/INNO-RTFDocs/eos/build/bin/

# Rule to build all files generated by this target.
programs/cleos/CMakeFiles/cleos.dir/build: programs/cleos/cleos

.PHONY : programs/cleos/CMakeFiles/cleos.dir/build

programs/cleos/CMakeFiles/cleos.dir/requires: programs/cleos/CMakeFiles/cleos.dir/main.cpp.o.requires
programs/cleos/CMakeFiles/cleos.dir/requires: programs/cleos/CMakeFiles/cleos.dir/httpc.cpp.o.requires
programs/cleos/CMakeFiles/cleos.dir/requires: programs/cleos/CMakeFiles/cleos.dir/help_text.cpp.o.requires

.PHONY : programs/cleos/CMakeFiles/cleos.dir/requires

programs/cleos/CMakeFiles/cleos.dir/clean:
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos && $(CMAKE_COMMAND) -P CMakeFiles/cleos.dir/cmake_clean.cmake
.PHONY : programs/cleos/CMakeFiles/cleos.dir/clean

programs/cleos/CMakeFiles/cleos.dir/depend:
	cd /home/ghlee/INNO-RTFDocs/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ghlee/INNO-RTFDocs/eos /home/ghlee/INNO-RTFDocs/eos/programs/cleos /home/ghlee/INNO-RTFDocs/eos/build /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos /home/ghlee/INNO-RTFDocs/eos/build/programs/cleos/CMakeFiles/cleos.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/cleos/CMakeFiles/cleos.dir/depend

