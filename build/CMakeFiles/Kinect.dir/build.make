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
include CMakeFiles/Kinect.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Kinect.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Kinect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Kinect.dir/flags.make

CMakeFiles/Kinect.dir/codegen:
.PHONY : CMakeFiles/Kinect.dir/codegen

CMakeFiles/Kinect.dir/src/main.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/src/main.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/src/main.cpp
CMakeFiles/Kinect.dir/src/main.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Kinect.dir/src/main.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/src/main.cpp.o -MF CMakeFiles/Kinect.dir/src/main.cpp.o.d -o CMakeFiles/Kinect.dir/src/main.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/src/main.cpp

CMakeFiles/Kinect.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/src/main.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/src/main.cpp > CMakeFiles/Kinect.dir/src/main.cpp.i

CMakeFiles/Kinect.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/src/main.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/src/main.cpp -o CMakeFiles/Kinect.dir/src/main.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_demo.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_demo.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_demo.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_demo.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_draw.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_draw.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_draw.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_draw.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_tables.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_tables.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_tables.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_tables.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_widgets.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_widgets.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_widgets.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/imgui_widgets.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.s

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o: CMakeFiles/Kinect.dir/flags.make
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o: /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp
CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o: CMakeFiles/Kinect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o -MF CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o.d -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o -c /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp > CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.i

CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp -o CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.s

# Object files for target Kinect
Kinect_OBJECTS = \
"CMakeFiles/Kinect.dir/src/main.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o"

# External object files for target Kinect
Kinect_EXTERNAL_OBJECTS =

Kinect: CMakeFiles/Kinect.dir/src/main.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_demo.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_draw.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_tables.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/imgui_widgets.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_glfw.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/backends/imgui_impl_opengl3.cpp.o
Kinect: CMakeFiles/Kinect.dir/lib/Nexus/vendor/ImGui/misc/cpp/imgui_stdlib.cpp.o
Kinect: CMakeFiles/Kinect.dir/build.make
Kinect: lib/Nexus/libNexus.a
Kinect: lib/Nexus/vendor/glm/glm/libglm.a
Kinect: lib/Nexus/libImGui.a
Kinect: lib/Nexus/vendor/glad/libglad.a
Kinect: lib/Nexus/vendor/glfw/src/libglfw3.a
Kinect: lib/Nexus/vendor/spdlog/libspdlogd.a
Kinect: CMakeFiles/Kinect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable Kinect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Kinect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Kinect.dir/build: Kinect
.PHONY : CMakeFiles/Kinect.dir/build

CMakeFiles/Kinect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Kinect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Kinect.dir/clean

CMakeFiles/Kinect.dir/depend:
	cd /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build /Users/kobe/Documents/School/2024-2025/Tools_and_Technologies_for_Interactive_Systems/project/build/CMakeFiles/Kinect.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Kinect.dir/depend

