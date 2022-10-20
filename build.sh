#!/bin/bash

# Build temporary binary
pyston-scons -j$(nproc) p=linuxbsd dev_build=yes target=editor module_mono_enabled=yes mono_glue=yes copy_mono_root=yes use_llvm=yes use_lld=yes
# Generate glue sources
#./bin/godot.linuxbsd.editor.dev.x86_64.mono --generate-mono-glue modules/mono/glue

### Build binaries normally
# Editor
#scons -j$(nproc) p=linuxbsd dev_build=yes target=editor module_mono_enabled=yes mono_glue=yes use_llvm=yes use_lld=yes
# Export templates
#scons -j$(nproc) p=linuxbsd target=template_debug tools=no module_mono_enabled=yes
#scons -j$(nproc) p=linuxbsd target=template_release tools=no module_mono_enabled=yes
