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
include tests/CMakeFiles/test_http.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_http.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_http.dir/flags.make

tests/CMakeFiles/test_http.dir/test_http.cpp.o: tests/CMakeFiles/test_http.dir/flags.make
tests/CMakeFiles/test_http.dir/test_http.cpp.o: tests/test_http.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user42/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_http.dir/test_http.cpp.o"
	cd /home/user42/webserver/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_http.dir/test_http.cpp.o -c /home/user42/webserver/tests/test_http.cpp

tests/CMakeFiles/test_http.dir/test_http.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_http.dir/test_http.cpp.i"
	cd /home/user42/webserver/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user42/webserver/tests/test_http.cpp > CMakeFiles/test_http.dir/test_http.cpp.i

tests/CMakeFiles/test_http.dir/test_http.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_http.dir/test_http.cpp.s"
	cd /home/user42/webserver/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user42/webserver/tests/test_http.cpp -o CMakeFiles/test_http.dir/test_http.cpp.s

# Object files for target test_http
test_http_OBJECTS = \
"CMakeFiles/test_http.dir/test_http.cpp.o"

# External object files for target test_http
test_http_EXTERNAL_OBJECTS =

tests/test_http: tests/CMakeFiles/test_http.dir/test_http.cpp.o
tests/test_http: tests/CMakeFiles/test_http.dir/build.make
tests/test_http: lib/http/libhttp.a
tests/test_http: lib/libgtest_main.a
tests/test_http: lib/libgtest.a
tests/test_http: tests/CMakeFiles/test_http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user42/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_http"
	cd /home/user42/webserver/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_http.dir/link.txt --verbose=$(VERBOSE)
	cd /home/user42/webserver/tests && /usr/bin/cmake -D TEST_TARGET=test_http -D TEST_EXECUTABLE=/home/user42/webserver/tests/test_http -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/user42/webserver/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_http_TESTS -D CTEST_FILE=/home/user42/webserver/tests/test_http[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -P /usr/share/cmake-3.16/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/test_http.dir/build: tests/test_http

.PHONY : tests/CMakeFiles/test_http.dir/build

tests/CMakeFiles/test_http.dir/clean:
	cd /home/user42/webserver/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_http.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_http.dir/clean

tests/CMakeFiles/test_http.dir/depend:
	cd /home/user42/webserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user42/webserver /home/user42/webserver/tests /home/user42/webserver /home/user42/webserver/tests /home/user42/webserver/tests/CMakeFiles/test_http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_http.dir/depend

