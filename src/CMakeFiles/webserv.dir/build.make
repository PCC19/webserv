# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/user42/webserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user42/webserver

# Include any dependencies generated for this target.
include src/CMakeFiles/webserv.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/webserv.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/webserv.dir/flags.make

src/CMakeFiles/webserv.dir/main.cpp.o: src/CMakeFiles/webserv.dir/flags.make
src/CMakeFiles/webserv.dir/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user42/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/webserv.dir/main.cpp.o"
	cd /home/user42/webserver/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserv.dir/main.cpp.o -c /home/user42/webserver/src/main.cpp

src/CMakeFiles/webserv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserv.dir/main.cpp.i"
	cd /home/user42/webserver/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user42/webserver/src/main.cpp > CMakeFiles/webserv.dir/main.cpp.i

src/CMakeFiles/webserv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserv.dir/main.cpp.s"
	cd /home/user42/webserver/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user42/webserver/src/main.cpp -o CMakeFiles/webserv.dir/main.cpp.s

# Object files for target webserv
webserv_OBJECTS = \
"CMakeFiles/webserv.dir/main.cpp.o"

# External object files for target webserv
webserv_EXTERNAL_OBJECTS =

webserv: src/CMakeFiles/webserv.dir/main.cpp.o
webserv: src/CMakeFiles/webserv.dir/build.make
webserv: lib/socket/libsocket.a
webserv: lib/utils/libutils.a
webserv: lib/http/libhttp.a
webserv: src/CMakeFiles/webserv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user42/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../webserv"
	cd /home/user42/webserver/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webserv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/webserv.dir/build: webserv

.PHONY : src/CMakeFiles/webserv.dir/build

src/CMakeFiles/webserv.dir/clean:
	cd /home/user42/webserver/src && $(CMAKE_COMMAND) -P CMakeFiles/webserv.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/webserv.dir/clean

src/CMakeFiles/webserv.dir/depend:
	cd /home/user42/webserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user42/webserver /home/user42/webserver/src /home/user42/webserver /home/user42/webserver/src /home/user42/webserver/src/CMakeFiles/webserv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/webserv.dir/depend

