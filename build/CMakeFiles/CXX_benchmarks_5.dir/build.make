# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build

# Include any dependencies generated for this target.
include CMakeFiles/CXX_benchmarks_5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CXX_benchmarks_5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CXX_benchmarks_5.dir/flags.make

CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o: CMakeFiles/CXX_benchmarks_5.dir/flags.make
CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o -c /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/main.cpp

CMakeFiles/CXX_benchmarks_5.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CXX_benchmarks_5.dir/main.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/main.cpp > CMakeFiles/CXX_benchmarks_5.dir/main.cpp.i

CMakeFiles/CXX_benchmarks_5.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CXX_benchmarks_5.dir/main.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/main.cpp -o CMakeFiles/CXX_benchmarks_5.dir/main.cpp.s

CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.requires

CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.provides: CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CXX_benchmarks_5.dir/build.make CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.provides

CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.provides.build: CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o


CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o: CMakeFiles/CXX_benchmarks_5.dir/flags.make
CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o: ../benchmarks/Benchmark1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o -c /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/Benchmark1.cpp

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/Benchmark1.cpp > CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.i

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/Benchmark1.cpp -o CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.s

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.requires:

.PHONY : CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.requires

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.provides: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.requires
	$(MAKE) -f CMakeFiles/CXX_benchmarks_5.dir/build.make CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.provides.build
.PHONY : CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.provides

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.provides.build: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o


CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o: CMakeFiles/CXX_benchmarks_5.dir/flags.make
CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o: ../benchmarks/Benchmark2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o -c /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/Benchmark2.cpp

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/Benchmark2.cpp > CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.i

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/Benchmark2.cpp -o CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.s

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.requires:

.PHONY : CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.requires

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.provides: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.requires
	$(MAKE) -f CMakeFiles/CXX_benchmarks_5.dir/build.make CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.provides.build
.PHONY : CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.provides

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.provides.build: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o


CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o: CMakeFiles/CXX_benchmarks_5.dir/flags.make
CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o: ../benchmarks/TimeMeasurement.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o -c /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/TimeMeasurement.cpp

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/TimeMeasurement.cpp > CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.i

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/benchmarks/TimeMeasurement.cpp -o CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.s

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.requires:

.PHONY : CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.requires

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.provides: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.requires
	$(MAKE) -f CMakeFiles/CXX_benchmarks_5.dir/build.make CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.provides.build
.PHONY : CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.provides

CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.provides.build: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o


# Object files for target CXX_benchmarks_5
CXX_benchmarks_5_OBJECTS = \
"CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o" \
"CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o" \
"CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o" \
"CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o"

# External object files for target CXX_benchmarks_5
CXX_benchmarks_5_EXTERNAL_OBJECTS =

CXX_benchmarks_5: CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o
CXX_benchmarks_5: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o
CXX_benchmarks_5: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o
CXX_benchmarks_5: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o
CXX_benchmarks_5: CMakeFiles/CXX_benchmarks_5.dir/build.make
CXX_benchmarks_5: CMakeFiles/CXX_benchmarks_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable CXX_benchmarks_5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CXX_benchmarks_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CXX_benchmarks_5.dir/build: CXX_benchmarks_5

.PHONY : CMakeFiles/CXX_benchmarks_5.dir/build

CMakeFiles/CXX_benchmarks_5.dir/requires: CMakeFiles/CXX_benchmarks_5.dir/main.cpp.o.requires
CMakeFiles/CXX_benchmarks_5.dir/requires: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark1.cpp.o.requires
CMakeFiles/CXX_benchmarks_5.dir/requires: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/Benchmark2.cpp.o.requires
CMakeFiles/CXX_benchmarks_5.dir/requires: CMakeFiles/CXX_benchmarks_5.dir/benchmarks/TimeMeasurement.cpp.o.requires

.PHONY : CMakeFiles/CXX_benchmarks_5.dir/requires

CMakeFiles/CXX_benchmarks_5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CXX_benchmarks_5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CXX_benchmarks_5.dir/clean

CMakeFiles/CXX_benchmarks_5.dir/depend:
	cd /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5 /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5 /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build /home/uri/projects/CXX_benchmarks_5/CXX_benchmarks_5/build/CMakeFiles/CXX_benchmarks_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CXX_benchmarks_5.dir/depend

