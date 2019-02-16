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

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")

    files {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs {
        "%{prj.name}/src",
        "vendor/chaiscript/include"
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"