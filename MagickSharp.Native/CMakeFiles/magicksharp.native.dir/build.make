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
CMAKE_COMMAND = "/Users/antoniobottelier/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4548.31/CLion.app/Contents/bin/cmake/bin/cmake"

# The command to remove a file.
RM = "/Users/antoniobottelier/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4548.31/CLion.app/Contents/bin/cmake/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/Partitie/MagickSharp/MagickSharp.Native

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/Partitie/MagickSharp/MagickSharp.Native

# Include any dependencies generated for this target.
include CMakeFiles/magicksharp.native.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/magicksharp.native.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/magicksharp.native.dir/flags.make

CMakeFiles/magicksharp.native.dir/MagickSharp.c.o: CMakeFiles/magicksharp.native.dir/flags.make
CMakeFiles/magicksharp.native.dir/MagickSharp.c.o: MagickSharp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/magicksharp.native.dir/MagickSharp.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/magicksharp.native.dir/MagickSharp.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp.c

CMakeFiles/magicksharp.native.dir/MagickSharp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/magicksharp.native.dir/MagickSharp.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp.c > CMakeFiles/magicksharp.native.dir/MagickSharp.c.i

CMakeFiles/magicksharp.native.dir/MagickSharp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/magicksharp.native.dir/MagickSharp.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp.c -o CMakeFiles/magicksharp.native.dir/MagickSharp.c.s

CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.requires:

.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.requires

CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.provides: CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.requires
	$(MAKE) -f CMakeFiles/magicksharp.native.dir/build.make CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.provides.build
.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.provides

CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.provides.build: CMakeFiles/magicksharp.native.dir/MagickSharp.c.o


CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o: CMakeFiles/magicksharp.native.dir/flags.make
CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o: MagickSharp_Image.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Image.c

CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Image.c > CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.i

CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Image.c -o CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.s

CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.requires:

.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.requires

CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.provides: CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.requires
	$(MAKE) -f CMakeFiles/magicksharp.native.dir/build.make CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.provides.build
.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.provides

CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.provides.build: CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o


CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o: CMakeFiles/magicksharp.native.dir/flags.make
CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o: MagickSharp_Drawable.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Drawable.c

CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Drawable.c > CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.i

CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_Drawable.c -o CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.s

CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.requires:

.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.requires

CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.provides: CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.requires
	$(MAKE) -f CMakeFiles/magicksharp.native.dir/build.make CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.provides.build
.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.provides

CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.provides.build: CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o


CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o: CMakeFiles/magicksharp.native.dir/flags.make
CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o: MagickSharp_PixelWand.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_PixelWand.c

CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_PixelWand.c > CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.i

CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_PixelWand.c -o CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.s

CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.requires:

.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.requires

CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.provides: CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.requires
	$(MAKE) -f CMakeFiles/magicksharp.native.dir/build.make CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.provides.build
.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.provides

CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.provides.build: CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o


CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o: CMakeFiles/magicksharp.native.dir/flags.make
CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o: MagickSharp_ImageCollection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_ImageCollection.c

CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_ImageCollection.c > CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.i

CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_ImageCollection.c -o CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.s

CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.requires:

.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.requires

CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.provides: CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.requires
	$(MAKE) -f CMakeFiles/magicksharp.native.dir/build.make CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.provides.build
.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.provides

CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.provides.build: CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o


CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o: CMakeFiles/magicksharp.native.dir/flags.make
CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o: MagickSharp_TypeMetrics.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o   -c /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_TypeMetrics.c

CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_TypeMetrics.c > CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.i

CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/Partitie/MagickSharp/MagickSharp.Native/MagickSharp_TypeMetrics.c -o CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.s

CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.requires:

.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.requires

CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.provides: CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.requires
	$(MAKE) -f CMakeFiles/magicksharp.native.dir/build.make CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.provides.build
.PHONY : CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.provides

CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.provides.build: CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o


# Object files for target magicksharp.native
magicksharp_native_OBJECTS = \
"CMakeFiles/magicksharp.native.dir/MagickSharp.c.o" \
"CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o" \
"CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o" \
"CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o" \
"CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o" \
"CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o"

# External object files for target magicksharp.native
magicksharp_native_EXTERNAL_OBJECTS =

libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/MagickSharp.c.o
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/build.make
libmagicksharp.native.dylib: CMakeFiles/magicksharp.native.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C shared library libmagicksharp.native.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/magicksharp.native.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/magicksharp.native.dir/build: libmagicksharp.native.dylib

.PHONY : CMakeFiles/magicksharp.native.dir/build

CMakeFiles/magicksharp.native.dir/requires: CMakeFiles/magicksharp.native.dir/MagickSharp.c.o.requires
CMakeFiles/magicksharp.native.dir/requires: CMakeFiles/magicksharp.native.dir/MagickSharp_Image.c.o.requires
CMakeFiles/magicksharp.native.dir/requires: CMakeFiles/magicksharp.native.dir/MagickSharp_Drawable.c.o.requires
CMakeFiles/magicksharp.native.dir/requires: CMakeFiles/magicksharp.native.dir/MagickSharp_PixelWand.c.o.requires
CMakeFiles/magicksharp.native.dir/requires: CMakeFiles/magicksharp.native.dir/MagickSharp_ImageCollection.c.o.requires
CMakeFiles/magicksharp.native.dir/requires: CMakeFiles/magicksharp.native.dir/MagickSharp_TypeMetrics.c.o.requires

.PHONY : CMakeFiles/magicksharp.native.dir/requires

CMakeFiles/magicksharp.native.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/magicksharp.native.dir/cmake_clean.cmake
.PHONY : CMakeFiles/magicksharp.native.dir/clean

CMakeFiles/magicksharp.native.dir/depend:
	cd /Volumes/Partitie/MagickSharp/MagickSharp.Native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/Partitie/MagickSharp/MagickSharp.Native /Volumes/Partitie/MagickSharp/MagickSharp.Native /Volumes/Partitie/MagickSharp/MagickSharp.Native /Volumes/Partitie/MagickSharp/MagickSharp.Native /Volumes/Partitie/MagickSharp/MagickSharp.Native/CMakeFiles/magicksharp.native.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/magicksharp.native.dir/depend

