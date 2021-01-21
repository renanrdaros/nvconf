"cmake.cmakePath": {
  "type": "string",
  "default": "cmake",
  "description": "Path to CMake generator executable"
},
"cmake.formatter": {
  "type": "string",
  "default": "cmake-format",
  "description": "Path to [cmake-format](https://github.com/cheshirekow/cmake_format)"
},
"cmake.lsp.enable": {
  "type": "boolean",
  "default": false,
  "description": "Enable language server(https://github.com/regen100/cmake-language-server), Notice that the functionality(completion, formatting, etc.) of lsp and extension builtin can not coexist"
},
"cmake.lsp.serverPath": {
  "type": "string",
  "default": "cmake-language-server",
  "description": "Path to [cmake-language-server](https://github.com/regen100/cmake-language-server)"
},
"cmake.lsp.buildDirectory": {
  "type": "string",
  "default": "build",
  "description": "See https://github.com/regen100/cmake-language-server#configuration"
}
