# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\catal\VisualStudioProjects\LU-decomposition

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\catal\VisualStudioProjects\LU-decomposition\build

# Include any dependencies generated for this target.
include CMakeFiles/LU-decomposition.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LU-decomposition.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LU-decomposition.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LU-decomposition.dir/flags.make

CMakeFiles/LU-decomposition.dir/main.cpp.obj: CMakeFiles/LU-decomposition.dir/flags.make
CMakeFiles/LU-decomposition.dir/main.cpp.obj: C:/Users/catal/VisualStudioProjects/LU-decomposition/main.cpp
CMakeFiles/LU-decomposition.dir/main.cpp.obj: CMakeFiles/LU-decomposition.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\catal\VisualStudioProjects\LU-decomposition\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LU-decomposition.dir/main.cpp.obj"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LU-decomposition.dir/main.cpp.obj -MF CMakeFiles\LU-decomposition.dir\main.cpp.obj.d -o CMakeFiles\LU-decomposition.dir\main.cpp.obj -c C:\Users\catal\VisualStudioProjects\LU-decomposition\main.cpp

CMakeFiles/LU-decomposition.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LU-decomposition.dir/main.cpp.i"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\catal\VisualStudioProjects\LU-decomposition\main.cpp > CMakeFiles\LU-decomposition.dir\main.cpp.i

CMakeFiles/LU-decomposition.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LU-decomposition.dir/main.cpp.s"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\catal\VisualStudioProjects\LU-decomposition\main.cpp -o CMakeFiles\LU-decomposition.dir\main.cpp.s

# Object files for target LU-decomposition
LU__decomposition_OBJECTS = \
"CMakeFiles/LU-decomposition.dir/main.cpp.obj"

# External object files for target LU-decomposition
LU__decomposition_EXTERNAL_OBJECTS =

LU-decomposition.exe: CMakeFiles/LU-decomposition.dir/main.cpp.obj
LU-decomposition.exe: CMakeFiles/LU-decomposition.dir/build.make
LU-decomposition.exe: CMakeFiles/LU-decomposition.dir/linkLibs.rsp
LU-decomposition.exe: CMakeFiles/LU-decomposition.dir/objects1
LU-decomposition.exe: CMakeFiles/LU-decomposition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\catal\VisualStudioProjects\LU-decomposition\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LU-decomposition.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LU-decomposition.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LU-decomposition.dir/build: LU-decomposition.exe
.PHONY : CMakeFiles/LU-decomposition.dir/build

CMakeFiles/LU-decomposition.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LU-decomposition.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LU-decomposition.dir/clean

CMakeFiles/LU-decomposition.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\catal\VisualStudioProjects\LU-decomposition C:\Users\catal\VisualStudioProjects\LU-decomposition C:\Users\catal\VisualStudioProjects\LU-decomposition\build C:\Users\catal\VisualStudioProjects\LU-decomposition\build C:\Users\catal\VisualStudioProjects\LU-decomposition\build\CMakeFiles\LU-decomposition.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LU-decomposition.dir/depend
