bin/find-known-roms: find-known-roms.lua
	mkdir -p bin
	../lua-amalg/src/amalg.lua -o bin/find-known-roms -s find-known-roms.lua lib.dirtree lib.inspect
	chmod a+x bin/find-known-roms

install: bin/find-known-roms
	mkdir -p ~/.local/bin/
	install -m755 bin/find-known-roms ~/.local/bin/

check: tests bin/find-known-roms
	./bin/find-known-roms ./tests/test-bios/roms ./tests/test-bios/dat | grep -q Found || (echo "Failed to detect BIOS"; exit 1)
