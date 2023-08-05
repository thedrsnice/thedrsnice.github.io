# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := bindings
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=bindings' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/mnice/.node-gyp/6.13.1/include/node \
	-I/Users/mnice/.node-gyp/6.13.1/src \
	-I/Users/mnice/.node-gyp/6.13.1/deps/uv/include \
	-I/Users/mnice/.node-gyp/6.13.1/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=bindings' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/mnice/.node-gyp/6.13.1/include/node \
	-I/Users/mnice/.node-gyp/6.13.1/src \
	-I/Users/mnice/.node-gyp/6.13.1/deps/uv/include \
	-I/Users/mnice/.node-gyp/6.13.1/deps/v8/include

OBJS :=

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)


### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/bindings.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/bindings.node: LIBS := $(LIBS)
$(builddir)/bindings.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/bindings.node: TOOLSET := $(TOOLSET)
$(builddir)/bindings.node:  FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/bindings.node
# Add target alias
.PHONY: bindings
bindings: $(builddir)/bindings.node

# Short alias for building this executable.
.PHONY: bindings.node
bindings.node: $(builddir)/bindings.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/bindings.node

