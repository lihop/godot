if [ ! -f ./modules/mono/glue/mono_glue.gen.cpp ]; then
	# Generate Mono glue.
	rm -rf ./bin/*.so
	scons target=release_debug platform=x11 tools=yes module_mono_enabled=yes mono_glue=no mono_prefix=$MONO_PREFIX -j$(nproc)
	./bin/godot.x11.opt.tools.64.mono --generate-mono-glue modules/mono/glue
fi

rm -rf ./bin/*.so
scons target=release_debug platform=x11 tools=yes module_mono_enabled=yes mono_prefix=$MONO_PREFIX -j$(nproc)
