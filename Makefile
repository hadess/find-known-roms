check: tests find-known-roms
	./find-known-roms ./tests/test-bios/roms ./tests/test-bios/dat | grep -q Found || (echo "Failed to detect BIOS"; exit 1)
