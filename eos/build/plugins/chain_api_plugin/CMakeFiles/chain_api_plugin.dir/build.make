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
include plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/depend.make

# Include the progress variables for this target.
include plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/flags.make

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/flags.make
plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o: ../plugins/chain_api_plugin/chain_api_plugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o"
	cd /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin && /usr/bin/clang++-4.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o -c /home/ghlee/INNO-RTFDocs/eos/plugins/chain_api_plugin/chain_api_plugin.cpp

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.i"
	cd /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ghlee/INNO-RTFDocs/eos/plugins/chain_api_plugin/chain_api_plugin.cpp > CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.i

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.s"
	cd /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin && /usr/bin/clang++-4.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ghlee/INNO-RTFDocs/eos/plugins/chain_api_plugin/chain_api_plugin.cpp -o CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.s

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.requires:

.PHONY : plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.requires

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.provides: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.requires
	$(MAKE) -f plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/build.make plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.provides.build
.PHONY : plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.provides

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.provides.build: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o


# Object files for target chain_api_plugin
chain_api_plugin_OBJECTS = \
"CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o"

# External object files for target chain_api_plugin
chain_api_plugin_EXTERNAL_OBJECTS =

plugins/chain_api_plugin/libchain_api_plugin.a: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o
plugins/chain_api_plugin/libchain_api_plugin.a: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/build.make
plugins/chain_api_plugin/libchain_api_plugin.a: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ghlee/INNO-RTFDocs/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libchain_api_plugin.a"
	cd /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin && $(CMAKE_COMMAND) -P CMakeFiles/chain_api_plugin.dir/cmake_clean_target.cmake
	cd /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chain_api_plugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/build: plugins/chain_api_plugin/libchain_api_plugin.a

.PHONY : plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/build

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/requires: plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/chain_api_plugin.cpp.o.requires

.PHONY : plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/requires

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/clean:
	cd /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin && $(CMAKE_COMMAND) -P CMakeFiles/chain_api_plugin.dir/cmake_clean.cmake
.PHONY : plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/clean

plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/depend:
	cd /home/ghlee/INNO-RTFDocs/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ghlee/INNO-RTFDocs/eos /home/ghlee/INNO-RTFDocs/eos/plugins/chain_api_plugin /home/ghlee/INNO-RTFDocs/eos/build /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin /home/ghlee/INNO-RTFDocs/eos/build/plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/chain_api_plugin/CMakeFiles/chain_api_plugin.dir/depend

