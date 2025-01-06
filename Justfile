build:
	./scripts/zmk_build.sh -m -o {{justfile_directory()}}

rebuild:
	./scripts/zmk_rebuild.sh -m -o {{justfile_directory()}}

flash side="left":
	#!/bin/bash

	just build
	if [ ! -f  ./lily58_{{side}}_nice_view_adapter_nice_view-zmk.uf2 ]; then
		echo "UF2 file not found, looks like the build failed?"
		exit 1
	fi
	while [ ! -d /Volumes/NICENANO ]; do 
		echo "Waiting for bootloader..."
		sleep 1
	done
	cp ./lily58_{{side}}_nice_view_adapter_nice_view-zmk.uf2 /Volumes/NICENANO
	mv ./lily58_{{side}}_nice_view_adapter_nice_view-zmk.uf2{,.old}
