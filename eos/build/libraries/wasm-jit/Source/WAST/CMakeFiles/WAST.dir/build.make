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
include libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/depend.make

# Include the progress variables for this target.
include libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o: ../libraries/wasm-jit/Source/WAST/NFA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/NFA.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/NFA.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/NFA.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/NFA.cpp > CMakeFiles/WAST.dir/NFA.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/NFA.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/NFA.cpp -o CMakeFiles/WAST.dir/NFA.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o: ../libraries/wasm-jit/Source/WAST/Lexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/Lexer.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Lexer.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/Lexer.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Lexer.cpp > CMakeFiles/WAST.dir/Lexer.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/Lexer.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Lexer.cpp -o CMakeFiles/WAST.dir/Lexer.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o: ../libraries/wasm-jit/Source/WAST/Parse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/Parse.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Parse.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/Parse.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Parse.cpp > CMakeFiles/WAST.dir/Parse.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/Parse.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Parse.cpp -o CMakeFiles/WAST.dir/Parse.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o: ../libraries/wasm-jit/Source/WAST/ParseFunction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/ParseFunction.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseFunction.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/ParseFunction.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseFunction.cpp > CMakeFiles/WAST.dir/ParseFunction.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/ParseFunction.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseFunction.cpp -o CMakeFiles/WAST.dir/ParseFunction.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o: ../libraries/wasm-jit/Source/WAST/ParseNumbers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/ParseNumbers.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseNumbers.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/ParseNumbers.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseNumbers.cpp > CMakeFiles/WAST.dir/ParseNumbers.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/ParseNumbers.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseNumbers.cpp -o CMakeFiles/WAST.dir/ParseNumbers.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o: ../libraries/wasm-jit/Source/WAST/ParseModule.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/ParseModule.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseModule.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/ParseModule.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseModule.cpp > CMakeFiles/WAST.dir/ParseModule.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/ParseModule.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseModule.cpp -o CMakeFiles/WAST.dir/ParseModule.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o: ../libraries/wasm-jit/Source/WAST/ParseTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/ParseTests.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseTests.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/ParseTests.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseTests.cpp > CMakeFiles/WAST.dir/ParseTests.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/ParseTests.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/ParseTests.cpp -o CMakeFiles/WAST.dir/ParseTests.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o: ../libraries/wasm-jit/Source/WAST/Print.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/Print.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Print.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/Print.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Print.cpp > CMakeFiles/WAST.dir/Print.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/Print.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Print.cpp -o CMakeFiles/WAST.dir/Print.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o


libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/flags.make
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o: ../libraries/wasm-jit/Source/WAST/Regexp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WAST.dir/Regexp.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Regexp.cpp

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WAST.dir/Regexp.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Regexp.cpp > CMakeFiles/WAST.dir/Regexp.cpp.i

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WAST.dir/Regexp.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST/Regexp.cpp -o CMakeFiles/WAST.dir/Regexp.cpp.s

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.provides: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.provides

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.provides.build: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o


# Object files for target WAST
WAST_OBJECTS = \
"CMakeFiles/WAST.dir/NFA.cpp.o" \
"CMakeFiles/WAST.dir/Lexer.cpp.o" \
"CMakeFiles/WAST.dir/Parse.cpp.o" \
"CMakeFiles/WAST.dir/ParseFunction.cpp.o" \
"CMakeFiles/WAST.dir/ParseNumbers.cpp.o" \
"CMakeFiles/WAST.dir/ParseModule.cpp.o" \
"CMakeFiles/WAST.dir/ParseTests.cpp.o" \
"CMakeFiles/WAST.dir/Print.cpp.o" \
"CMakeFiles/WAST.dir/Regexp.cpp.o"

# External object files for target WAST
WAST_EXTERNAL_OBJECTS =

libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build.make
libraries/wasm-jit/Source/WAST/libWAST.a: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libWAST.a"
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && $(CMAKE_COMMAND) -P CMakeFiles/WAST.dir/cmake_clean_target.cmake
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WAST.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build: libraries/wasm-jit/Source/WAST/libWAST.a

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/build

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/NFA.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Lexer.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Parse.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseFunction.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseNumbers.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseModule.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/ParseTests.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Print.cpp.o.requires
libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires: libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/Regexp.cpp.o.requires

.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/requires

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/clean:
	cd /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST && $(CMAKE_COMMAND) -P CMakeFiles/WAST.dir/cmake_clean.cmake
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/clean

libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/depend:
	cd /home/ghlee/INNO-RTFDocs/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ghlee/INNO-RTFDocs/eos /home/ghlee/INNO-RTFDocs/eos/libraries/wasm-jit/Source/WAST /home/ghlee/INNO-RTFDocs/eos/build /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST /home/ghlee/INNO-RTFDocs/eos/build/libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/wasm-jit/Source/WAST/CMakeFiles/WAST.dir/depend

