project "glfw"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"

    files {
        "src/async.cpp",
        "src/color_sinks.cpp",
        "src/file_sinks.cpp",
        "src/fmt.cpp",
        "src/spdlog.cpp",
        "src/stdout_sinks.cpp"
    }

    includedirs {
        "include"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"    
        optimize "On"
