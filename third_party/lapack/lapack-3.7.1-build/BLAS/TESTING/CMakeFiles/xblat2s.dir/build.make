# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = C:\CMake\bin\cmake.exe

# The command to remove a file.
RM = C:\CMake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\oss\third_party\lapack\lapack-3.7.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\oss\third_party\lapack\lapack-3.7.1-build

# Include any dependencies generated for this target.
include BLAS/TESTING/CMakeFiles/xblat2s.dir/depend.make

# Include the progress variables for this target.
include BLAS/TESTING/CMakeFiles/xblat2s.dir/progress.make

# Include the compile flags for this target's objects.
include BLAS/TESTING/CMakeFiles/xblat2s.dir/flags.make

BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj: BLAS/TESTING/CMakeFiles/xblat2s.dir/flags.make
BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj: C:/oss/third_party/lapack/lapack-3.7.1/BLAS/TESTING/sblat2.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\oss\third_party\lapack\lapack-3.7.1-build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj"
	cd /d C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gfortran.exe $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c C:\oss\third_party\lapack\lapack-3.7.1\BLAS\TESTING\sblat2.f -o CMakeFiles\xblat2s.dir\sblat2.f.obj

BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/xblat2s.dir/sblat2.f.i"
	cd /d C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gfortran.exe $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E C:\oss\third_party\lapack\lapack-3.7.1\BLAS\TESTING\sblat2.f > CMakeFiles\xblat2s.dir\sblat2.f.i

BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/xblat2s.dir/sblat2.f.s"
	cd /d C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gfortran.exe $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S C:\oss\third_party\lapack\lapack-3.7.1\BLAS\TESTING\sblat2.f -o CMakeFiles\xblat2s.dir\sblat2.f.s

BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.requires:

.PHONY : BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.requires

BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.provides: BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.requires
	$(MAKE) -f BLAS\TESTING\CMakeFiles\xblat2s.dir\build.make BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.provides.build
.PHONY : BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.provides

BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.provides.build: BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj


# Object files for target xblat2s
xblat2s_OBJECTS = \
"CMakeFiles/xblat2s.dir/sblat2.f.obj"

# External object files for target xblat2s
xblat2s_EXTERNAL_OBJECTS =

bin/xblat2s.exe: BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj
bin/xblat2s.exe: BLAS/TESTING/CMakeFiles/xblat2s.dir/build.make
bin/xblat2s.exe: lib/libblas.dll.a
bin/xblat2s.exe: BLAS/TESTING/CMakeFiles/xblat2s.dir/linklibs.rsp
bin/xblat2s.exe: BLAS/TESTING/CMakeFiles/xblat2s.dir/objects1.rsp
bin/xblat2s.exe: BLAS/TESTING/CMakeFiles/xblat2s.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\oss\third_party\lapack\lapack-3.7.1-build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable ..\..\bin\xblat2s.exe"
	cd /d C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\xblat2s.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
BLAS/TESTING/CMakeFiles/xblat2s.dir/build: bin/xblat2s.exe

.PHONY : BLAS/TESTING/CMakeFiles/xblat2s.dir/build

BLAS/TESTING/CMakeFiles/xblat2s.dir/requires: BLAS/TESTING/CMakeFiles/xblat2s.dir/sblat2.f.obj.requires

.PHONY : BLAS/TESTING/CMakeFiles/xblat2s.dir/requires

BLAS/TESTING/CMakeFiles/xblat2s.dir/clean:
	cd /d C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING && $(CMAKE_COMMAND) -P CMakeFiles\xblat2s.dir\cmake_clean.cmake
.PHONY : BLAS/TESTING/CMakeFiles/xblat2s.dir/clean

BLAS/TESTING/CMakeFiles/xblat2s.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\oss\third_party\lapack\lapack-3.7.1 C:\oss\third_party\lapack\lapack-3.7.1\BLAS\TESTING C:\oss\third_party\lapack\lapack-3.7.1-build C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING C:\oss\third_party\lapack\lapack-3.7.1-build\BLAS\TESTING\CMakeFiles\xblat2s.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : BLAS/TESTING/CMakeFiles/xblat2s.dir/depend

