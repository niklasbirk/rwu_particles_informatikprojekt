# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Programme\JetBrains\CLion\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\Programme\JetBrains\CLion\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug"

# Include any dependencies generated for this target.
include tests/CMakeFiles/opacity.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/opacity.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/opacity.dir/flags.make

tests/CMakeFiles/opacity.dir/opacity.c.obj: tests/CMakeFiles/opacity.dir/flags.make
tests/CMakeFiles/opacity.dir/opacity.c.obj: tests/CMakeFiles/opacity.dir/includes_C.rsp
tests/CMakeFiles/opacity.dir/opacity.c.obj: ../tests/opacity.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/opacity.dir/opacity.c.obj"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && D:\Programme\MingW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\opacity.dir\opacity.c.obj   -c "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\tests\opacity.c"

tests/CMakeFiles/opacity.dir/opacity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opacity.dir/opacity.c.i"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && D:\Programme\MingW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\tests\opacity.c" > CMakeFiles\opacity.dir\opacity.c.i

tests/CMakeFiles/opacity.dir/opacity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opacity.dir/opacity.c.s"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && D:\Programme\MingW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\tests\opacity.c" -o CMakeFiles\opacity.dir\opacity.c.s

tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.obj: tests/CMakeFiles/opacity.dir/flags.make
tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.obj: tests/CMakeFiles/opacity.dir/includes_C.rsp
tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.obj: ../deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.obj"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && D:\Programme\MingW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\opacity.dir\__\deps\glad_gl.c.obj   -c "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\deps\glad_gl.c"

tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opacity.dir/__/deps/glad_gl.c.i"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && D:\Programme\MingW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\deps\glad_gl.c" > CMakeFiles\opacity.dir\__\deps\glad_gl.c.i

tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opacity.dir/__/deps/glad_gl.c.s"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && D:\Programme\MingW\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\deps\glad_gl.c" -o CMakeFiles\opacity.dir\__\deps\glad_gl.c.s

# Object files for target opacity
opacity_OBJECTS = \
"CMakeFiles/opacity.dir/opacity.c.obj" \
"CMakeFiles/opacity.dir/__/deps/glad_gl.c.obj"

# External object files for target opacity
opacity_EXTERNAL_OBJECTS =

tests/opacity.exe: tests/CMakeFiles/opacity.dir/opacity.c.obj
tests/opacity.exe: tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.obj
tests/opacity.exe: tests/CMakeFiles/opacity.dir/build.make
tests/opacity.exe: src/libglfw3.a
tests/opacity.exe: tests/CMakeFiles/opacity.dir/linklibs.rsp
tests/opacity.exe: tests/CMakeFiles/opacity.dir/objects1.rsp
tests/opacity.exe: tests/CMakeFiles/opacity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable opacity.exe"
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\opacity.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/opacity.dir/build: tests/opacity.exe

.PHONY : tests/CMakeFiles/opacity.dir/build

tests/CMakeFiles/opacity.dir/clean:
	cd /d "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" && $(CMAKE_COMMAND) -P CMakeFiles\opacity.dir\cmake_clean.cmake
.PHONY : tests/CMakeFiles/opacity.dir/clean

tests/CMakeFiles/opacity.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3" "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\tests" "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug" "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests" "D:\Niklas Birk\Dokumente\Programmierung\C\Informatikprojekt\glfw-3.3\cmake-build-debug\tests\CMakeFiles\opacity.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : tests/CMakeFiles/opacity.dir/depend

