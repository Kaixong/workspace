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
CMAKE_SOURCE_DIR = /home/shabadabadoo/workspace/dataglove/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shabadabadoo/workspace/dataglove/build

# Include any dependencies generated for this target.
include dataglovetest/CMakeFiles/dataglove_recipient.dir/depend.make

# Include the progress variables for this target.
include dataglovetest/CMakeFiles/dataglove_recipient.dir/progress.make

# Include the compile flags for this target's objects.
include dataglovetest/CMakeFiles/dataglove_recipient.dir/flags.make

dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o: dataglovetest/CMakeFiles/dataglove_recipient.dir/flags.make
dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o: /home/shabadabadoo/workspace/dataglove/src/dataglovetest/src/dataglove_recipient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shabadabadoo/workspace/dataglove/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o"
	cd /home/shabadabadoo/workspace/dataglove/build/dataglovetest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o -c /home/shabadabadoo/workspace/dataglove/src/dataglovetest/src/dataglove_recipient.cpp

dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.i"
	cd /home/shabadabadoo/workspace/dataglove/build/dataglovetest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shabadabadoo/workspace/dataglove/src/dataglovetest/src/dataglove_recipient.cpp > CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.i

dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.s"
	cd /home/shabadabadoo/workspace/dataglove/build/dataglovetest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shabadabadoo/workspace/dataglove/src/dataglovetest/src/dataglove_recipient.cpp -o CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.s

dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.requires:

.PHONY : dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.requires

dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.provides: dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.requires
	$(MAKE) -f dataglovetest/CMakeFiles/dataglove_recipient.dir/build.make dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.provides.build
.PHONY : dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.provides

dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.provides.build: dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o


# Object files for target dataglove_recipient
dataglove_recipient_OBJECTS = \
"CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o"

# External object files for target dataglove_recipient
dataglove_recipient_EXTERNAL_OBJECTS =

/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: dataglovetest/CMakeFiles/dataglove_recipient.dir/build.make
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/libroscpp.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/librosconsole.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/librostime.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /opt/ros/kinetic/lib/libcpp_common.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient: dataglovetest/CMakeFiles/dataglove_recipient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shabadabadoo/workspace/dataglove/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient"
	cd /home/shabadabadoo/workspace/dataglove/build/dataglovetest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dataglove_recipient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dataglovetest/CMakeFiles/dataglove_recipient.dir/build: /home/shabadabadoo/workspace/dataglove/devel/lib/dataglovetest/dataglove_recipient

.PHONY : dataglovetest/CMakeFiles/dataglove_recipient.dir/build

dataglovetest/CMakeFiles/dataglove_recipient.dir/requires: dataglovetest/CMakeFiles/dataglove_recipient.dir/src/dataglove_recipient.cpp.o.requires

.PHONY : dataglovetest/CMakeFiles/dataglove_recipient.dir/requires

dataglovetest/CMakeFiles/dataglove_recipient.dir/clean:
	cd /home/shabadabadoo/workspace/dataglove/build/dataglovetest && $(CMAKE_COMMAND) -P CMakeFiles/dataglove_recipient.dir/cmake_clean.cmake
.PHONY : dataglovetest/CMakeFiles/dataglove_recipient.dir/clean

dataglovetest/CMakeFiles/dataglove_recipient.dir/depend:
	cd /home/shabadabadoo/workspace/dataglove/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shabadabadoo/workspace/dataglove/src /home/shabadabadoo/workspace/dataglove/src/dataglovetest /home/shabadabadoo/workspace/dataglove/build /home/shabadabadoo/workspace/dataglove/build/dataglovetest /home/shabadabadoo/workspace/dataglove/build/dataglovetest/CMakeFiles/dataglove_recipient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dataglovetest/CMakeFiles/dataglove_recipient.dir/depend
