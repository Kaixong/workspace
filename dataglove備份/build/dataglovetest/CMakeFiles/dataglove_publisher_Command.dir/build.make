# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/kumakai/workspace/dataglove/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kumakai/workspace/dataglove/build

# Include any dependencies generated for this target.
include dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/depend.make

# Include the progress variables for this target.
include dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/progress.make

# Include the compile flags for this target's objects.
include dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/flags.make

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/flags.make
dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o: /home/kumakai/workspace/dataglove/src/dataglovetest/src/dataglove_publisher_Command.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kumakai/workspace/dataglove/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o"
	cd /home/kumakai/workspace/dataglove/build/dataglovetest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o -c /home/kumakai/workspace/dataglove/src/dataglovetest/src/dataglove_publisher_Command.cpp

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.i"
	cd /home/kumakai/workspace/dataglove/build/dataglovetest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kumakai/workspace/dataglove/src/dataglovetest/src/dataglove_publisher_Command.cpp > CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.i

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.s"
	cd /home/kumakai/workspace/dataglove/build/dataglovetest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kumakai/workspace/dataglove/src/dataglovetest/src/dataglove_publisher_Command.cpp -o CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.s

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.requires:

.PHONY : dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.requires

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.provides: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.requires
	$(MAKE) -f dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/build.make dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.provides.build
.PHONY : dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.provides

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.provides.build: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o


# Object files for target dataglove_publisher_Command
dataglove_publisher_Command_OBJECTS = \
"CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o"

# External object files for target dataglove_publisher_Command
dataglove_publisher_Command_EXTERNAL_OBJECTS =

/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/build.make
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/libroscpp.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/librosconsole.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/librostime.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /opt/ros/kinetic/lib/libcpp_common.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: /home/kumakai/workspace/dataglove/src/dataglovetest/lib/libfglove.so
/home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kumakai/workspace/dataglove/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command"
	cd /home/kumakai/workspace/dataglove/build/dataglovetest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dataglove_publisher_Command.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/build: /home/kumakai/workspace/dataglove/devel/lib/dataglovetest/dataglove_publisher_Command

.PHONY : dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/build

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/requires: dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/src/dataglove_publisher_Command.cpp.o.requires

.PHONY : dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/requires

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/clean:
	cd /home/kumakai/workspace/dataglove/build/dataglovetest && $(CMAKE_COMMAND) -P CMakeFiles/dataglove_publisher_Command.dir/cmake_clean.cmake
.PHONY : dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/clean

dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/depend:
	cd /home/kumakai/workspace/dataglove/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kumakai/workspace/dataglove/src /home/kumakai/workspace/dataglove/src/dataglovetest /home/kumakai/workspace/dataglove/build /home/kumakai/workspace/dataglove/build/dataglovetest /home/kumakai/workspace/dataglove/build/dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dataglovetest/CMakeFiles/dataglove_publisher_Command.dir/depend

