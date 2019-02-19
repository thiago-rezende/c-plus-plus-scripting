workspace "c-plus-plus"
    architecture "x64"
    configurations { "Debug", "Release" }
    startproject "cpp-proj"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "cpp-proj"
    location "cpp-proj"
    language "C++"
    kind "ConsoleApp"
    cppdialect "C++17"
    configuration { "gmake" }
        buildoptions { "-O3" }

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")

    pchheader "pch.h"
    pchsource "%{prj.name}/src/pch.cpp"

    files {
        "%{prj.name}/include/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs {
        "%{prj.name}/include",
        "vendor/chaiscript/include"
    }

    filter "configurations:Debug"
        defines { "DEBUG", "CHAISCRIPT_NO_THREADS" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG", "CHAISCRIPT_NO_THREADS" }
        optimize "On"