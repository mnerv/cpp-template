project 'helloworld'
  kind 'ConsoleApp'
  language 'C++'
  staticruntime 'On'
  cppdialect 'C++17'

  targetdir('%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}')
  objdir('%{wks.location}/obj/%{cfg.buildcfg}/%{prj.name}')

  dependson {}

  defines {}

  files {
    'src/**.h',
    'src/**.hpp',
    'src/**.cpp',
  }

  includedirs {
    'src',
  }

  links {}

  filter {'not system:windows'}
    buildoptions {
      '-Wpedantic',
      '-Wconversion',
      '-Wall',
      '-Wextra',
      '-Werror',
    }

  filter 'system:macosx'
    system 'macosx'

  filter 'system:linx'
    system 'linux'

  filter 'system:windows'
    system 'windows'

  filter 'configurations:debug'
    symbols 'On'

  filter 'configurations:release'
    optimize 'On'

