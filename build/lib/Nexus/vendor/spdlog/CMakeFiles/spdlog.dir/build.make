# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build

# Include any dependencies generated for this target.
include lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/codegen:
.PHONY : lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/codegen

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/spdlog.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o -MF CMakeFiles/spdlog.dir/src/spdlog.cpp.o.d -o CMakeFiles/spdlog.dir/src/spdlog.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/spdlog.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/spdlog.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/spdlog.cpp > CMakeFiles/spdlog.dir/src/spdlog.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/spdlog.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/spdlog.cpp -o CMakeFiles/spdlog.dir/src/spdlog.cpp.s

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/stdout_sinks.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o -MF CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o.d -o CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/stdout_sinks.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/stdout_sinks.cpp > CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/stdout_sinks.cpp -o CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.s

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/color_sinks.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o -MF CMakeFiles/spdlog.dir/src/color_sinks.cpp.o.d -o CMakeFiles/spdlog.dir/src/color_sinks.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/color_sinks.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/color_sinks.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/color_sinks.cpp > CMakeFiles/spdlog.dir/src/color_sinks.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/color_sinks.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/color_sinks.cpp -o CMakeFiles/spdlog.dir/src/color_sinks.cpp.s

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/file_sinks.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o -MF CMakeFiles/spdlog.dir/src/file_sinks.cpp.o.d -o CMakeFiles/spdlog.dir/src/file_sinks.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/file_sinks.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/file_sinks.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/file_sinks.cpp > CMakeFiles/spdlog.dir/src/file_sinks.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/file_sinks.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/file_sinks.cpp -o CMakeFiles/spdlog.dir/src/file_sinks.cpp.s

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/async.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o -MF CMakeFiles/spdlog.dir/src/async.cpp.o.d -o CMakeFiles/spdlog.dir/src/async.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/async.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/async.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/async.cpp > CMakeFiles/spdlog.dir/src/async.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/async.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/async.cpp -o CMakeFiles/spdlog.dir/src/async.cpp.s

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/cfg.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o -MF CMakeFiles/spdlog.dir/src/cfg.cpp.o.d -o CMakeFiles/spdlog.dir/src/cfg.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/cfg.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/cfg.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/cfg.cpp > CMakeFiles/spdlog.dir/src/cfg.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/cfg.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/cfg.cpp -o CMakeFiles/spdlog.dir/src/cfg.cpp.s

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/flags.make
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/bundled_fmtlib_format.cpp
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o -MF CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o.d -o CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/bundled_fmtlib_format.cpp

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.i"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/bundled_fmtlib_format.cpp > CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.i

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.s"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog/src/bundled_fmtlib_format.cpp -o CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.s

# Object files for target spdlog
spdlog_OBJECTS = \
"CMakeFiles/spdlog.dir/src/spdlog.cpp.o" \
"CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o" \
"CMakeFiles/spdlog.dir/src/color_sinks.cpp.o" \
"CMakeFiles/spdlog.dir/src/file_sinks.cpp.o" \
"CMakeFiles/spdlog.dir/src/async.cpp.o" \
"CMakeFiles/spdlog.dir/src/cfg.cpp.o" \
"CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o"

# External object files for target spdlog
spdlog_EXTERNAL_OBJECTS =

lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/spdlog.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/stdout_sinks.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/color_sinks.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/file_sinks.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/async.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/cfg.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/src/bundled_fmtlib_format.cpp.o
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/build.make
lib/Nexus/vendor/spdlog/libspdlogd.a: lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libspdlogd.a"
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && $(CMAKE_COMMAND) -P CMakeFiles/spdlog.dir/cmake_clean_target.cmake
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spdlog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/build: lib/Nexus/vendor/spdlog/libspdlogd.a
.PHONY : lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/build

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/clean:
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog && $(CMAKE_COMMAND) -P CMakeFiles/spdlog.dir/cmake_clean.cmake
.PHONY : lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/clean

lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/depend:
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/spdlog /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/Nexus/vendor/spdlog/CMakeFiles/spdlog.dir/depend

