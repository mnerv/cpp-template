project('cpp-template', 'cpp',
    version: '0.0.0',
    default_options: [
        'cpp_std=c++20',
        'warning_level=3',
        'werror=true'
    ]
)

cpp = meson.get_compiler('cpp')
if build_machine.system() == 'darwin'
endif

# thread = dependency('threads')
# fmt = dependency('fmt', version: '>=8.1.1', required: true)

executable('helloworld',
  [
    'helloworld/src/main.cpp'
  ],
  include_directories: [
    'helloworld/src'
  ],
  dependencies: [
#   thread,
#   fmt,
  ]
)

