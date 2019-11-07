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
include programs/keosd/CMakeFiles/keosd.dir/depend.make

# Include the progress variables for this target.
include programs/keosd/CMakeFiles/keosd.dir/progress.make

# Include the compile flags for this target's objects.
include programs/keosd/CMakeFiles/keosd.dir/flags.make

programs/keosd/CMakeFiles/keosd.dir/main.cpp.o: programs/keosd/CMakeFiles/keosd.dir/flags.make
programs/keosd/CMakeFiles/keosd.dir/main.cpp.o: ../programs/keosd/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/keosd/CMakeFiles/keosd.dir/main.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/keosd.dir/main.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/programs/keosd/main.cpp

programs/keosd/CMakeFiles/keosd.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/keosd.dir/main.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/programs/keosd/main.cpp > CMakeFiles/keosd.dir/main.cpp.i

programs/keosd/CMakeFiles/keosd.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/keosd.dir/main.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/programs/keosd/main.cpp -o CMakeFiles/keosd.dir/main.cpp.s

programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.requires:

.PHONY : programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.requires

programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.provides: programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.requires
	$(MAKE) -f programs/keosd/CMakeFiles/keosd.dir/build.make programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.provides.build
.PHONY : programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.provides

programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.provides.build: programs/keosd/CMakeFiles/keosd.dir/main.cpp.o


# Object files for target keosd
keosd_OBJECTS = \
"CMakeFiles/keosd.dir/main.cpp.o"

# External object files for target keosd
keosd_EXTERNAL_OBJECTS =

programs/keosd/keosd: programs/keosd/CMakeFiles/keosd.dir/main.cpp.o
programs/keosd/keosd: programs/keosd/CMakeFiles/keosd.dir/build.make
programs/keosd/keosd: libraries/appbase/libappbase.a
programs/keosd/keosd: plugins/wallet_api_plugin/libwallet_api_plugin.a
programs/keosd/keosd: plugins/wallet_plugin/libwallet_plugin.a
programs/keosd/keosd: plugins/http_plugin/libhttp_plugin.a
programs/keosd/keosd: libraries/chain/libeosio_chain.a
programs/keosd/keosd: libraries/fc/libfc.a
programs/keosd/keosd: libraries/yubihsm/lib/libyubihsm.a
programs/keosd/keosd: libraries/appbase/libappbase.a
programs/keosd/keosd: libraries/chainbase/libchainbase.a
programs/keosd/keosd: libraries/wasm-jit/Source/WAST/libWAST.a
programs/keosd/keosd: libraries/wasm-jit/Source/WASM/libWASM.a
programs/keosd/keosd: libraries/wasm-jit/Source/Runtime/libRuntime.a
programs/keosd/keosd: libraries/wasm-jit/Source/IR/libIR.a
programs/keosd/keosd: libraries/wasm-jit/Source/Logging/libLogging.a
programs/keosd/keosd: libraries/wasm-jit/Source/Platform/libPlatform.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMPasses.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMipo.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMInstrumentation.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMVectorize.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMIRReader.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMAsmParser.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMLinker.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMMCJIT.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMExecutionEngine.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMRuntimeDyld.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMDebugInfoDWARF.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86CodeGen.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMAsmPrinter.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMDebugInfoCodeView.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMDebugInfoMSF.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMGlobalISel.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMSelectionDAG.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMCodeGen.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMScalarOpts.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMInstCombine.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMBitWriter.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMTransformUtils.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMTarget.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMAnalysis.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMProfileData.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86AsmParser.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86Desc.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86AsmPrinter.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86Utils.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMObject.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMMCParser.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMBitReader.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMCore.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86Disassembler.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMX86Info.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMMCDisassembler.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMMC.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMSupport.a
programs/keosd/keosd: /usr/lib/llvm-4.0/lib/libLLVMDemangle.a
programs/keosd/keosd: libraries/softfloat/libsoftfloat.a
programs/keosd/keosd: libraries/builtins/libbuiltins.a
programs/keosd/keosd: libraries/wabt/libwabt.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_date_time.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_filesystem.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_system.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_chrono.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_program_options.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_unit_test_framework.a
programs/keosd/keosd: /home/ghlee/src/boost_1_67_0/lib/libboost_iostreams.a
programs/keosd/keosd: /usr/lib/x86_64-linux-gnu/libssl.a
programs/keosd/keosd: /usr/lib/x86_64-linux-gnu/libcrypto.a
programs/keosd/keosd: /usr/lib/x86_64-linux-gnu/libz.so
programs/keosd/keosd: libraries/fc/secp256k1/libsecp256k1.a
programs/keosd/keosd: /usr/lib/x86_64-linux-gnu/libgmp.a
programs/keosd/keosd: programs/keosd/CMakeFiles/keosd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable keosd"
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/keosd.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && mkdir -p /home/ghlee/INNO-RTFDocs/eos/build/bin
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && /usr/bin/cmake -E copy /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd/keosd /home/ghlee/INNO-RTFDocs/eos/build/bin/

# Rule to build all files generated by this target.
programs/keosd/CMakeFiles/keosd.dir/build: programs/keosd/keosd

.PHONY : programs/keosd/CMakeFiles/keosd.dir/build

programs/keosd/CMakeFiles/keosd.dir/requires: programs/keosd/CMakeFiles/keosd.dir/main.cpp.o.requires

.PHONY : programs/keosd/CMakeFiles/keosd.dir/requires

programs/keosd/CMakeFiles/keosd.dir/clean:
	cd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd && $(CMAKE_COMMAND) -P CMakeFiles/keosd.dir/cmake_clean.cmake
.PHONY : programs/keosd/CMakeFiles/keosd.dir/clean

programs/keosd/CMakeFiles/keosd.dir/depend:
	cd /home/ghlee/INNO-RTFDocs/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ghlee/INNO-RTFDocs/eos /home/ghlee/INNO-RTFDocs/eos/programs/keosd /home/ghlee/INNO-RTFDocs/eos/build /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd /home/ghlee/INNO-RTFDocs/eos/build/programs/keosd/CMakeFiles/keosd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/keosd/CMakeFiles/keosd.dir/depend

