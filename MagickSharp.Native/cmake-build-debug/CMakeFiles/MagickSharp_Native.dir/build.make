# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/Partitie/MagickSharp/MagickSharp.Native

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MagickSharp_Native.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MagickSharp_Native.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MagickSharp_Native.dir/flags.make

CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o: CMakeFiles/MagickSharp_Native.dir/flags.make
CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o: ../MagickSharp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp.c

CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp.c > CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.i

CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp.c -o CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.s

CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.requires:

.PHONY : CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.requires

CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.provides: CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.requires
	$(MAKE) -f CMakeFiles/MagickSharp_Native.dir/build.make CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.provides.build
.PHONY : CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.provides

CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.provides.build: CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o


CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o: CMakeFiles/MagickSharp_Native.dir/flags.make
CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o: ../MagickSharp_Image.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Image.c

CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Image.c > CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.i

CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Image.c -o CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.s

CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.requires:

.PHONY : CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.requires

CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.provides: CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.requires
	$(MAKE) -f CMakeFiles/MagickSharp_Native.dir/build.make CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.provides.build
.PHONY : CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.provides

CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.provides.build: CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o


# Object files for target MagickSharp_Native
MagickSharp_Native_OBJECTS = \
"CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o" \
"CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o"

# External object files for target MagickSharp_Native
MagickSharp_Native_EXTERNAL_OBJECTS =

MagickSharp_Native: CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o
MagickSharp_Native: CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o
MagickSharp_Native: CMakeFiles/MagickSharp_Native.dir/build.make
MagickSharp_Native: CMakeFiles/MagickSharp_Native.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable MagickSharp_Native"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MagickSharp_Native.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MagickSharp_Native.dir/build: MagickSharp_Native

.PHONY : CMakeFiles/MagickSharp_Native.dir/build

CMakeFiles/MagickSharp_Native.dir/requires: CMakeFiles/MagickSharp_Native.dir/MagickSharp.c.o.requires
CMakeFiles/MagickSharp_Native.dir/requires: CMakeFiles/MagickSharp_Native.dir/MagickSharp_Image.c.o.requires

.PHONY : CMakeFiles/MagickSharp_Native.dir/requires

CMakeFiles/MagickSharp_Native.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MagickSharp_Native.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MagickSharp_Native.dir/clean

CMakeFiles/MagickSharp_Native.dir/depend:
	cd /Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/Partitie/MagickSharp/MagickSharp.Native /Volumes/Partitie/MagickSharp/MagickSharp.Native /Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug /Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug /Volumes/Partitie/MagickSharp/MagickSharp.Native/cmake-build-debug/CMakeFiles/MagickSharp_Native.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MagickSharp_Native.dir/depend

