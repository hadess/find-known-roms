# Find Known ROMs

Look for known ROM dumps in a directory, matched against a crlmamepro data file.

```sh
$ find-known-roms "~/Downloads/Sega Ages 2500 Series Vol. 33 - Fantasy Zone Complete Collection"
Loading databases from ~/.local/share/find-known-roms/
Checking files in "/home/hadess/Downloads/Sega Ages 2500 Series Vol. 33 - Fantasy Zone Complete Collection/" against databases
Found "Phantasy Star II - Nei's Adventure (Japan) (SegaNet)" in "ps2tnei_fixed.bin"
Found "Phantasy Star II - Kaerazaru Toki no Owari ni (Japan)" in "phantasystar2.sgd"
Found "Phantasy Star II - Kinds's Adventure (Japan) (SegaNet)" in "ps2tkind.sgd"
[...]
```

## Requirements

- lfs (called `lua-filesystem` in Fedora)
- lua-posix

And a directory containing ROM `.dat` files, such as a checkout of [libretro-database](https://github.com/libretro/libretro-database),
or any other compatible `.dat` files. Install it in
`~/.local/share/find-known-roms/` if you want to avoid having to pass
a path each time.

## Running

Look for ROMs in `/path/to/possible/roms` using databases in `/path/to/databases`:
```sh
$ find-known-roms /path/to/possible/roms /path/to/databases
```

Look for ROMs in `/path/to/possible/roms` with databases installed in `~/.local/share/find-known-roms/`:
```sh
$ find-known-roms /path/to/possible/roms
```

Look for ROMs in the current directory with databases installed in `~/.local/share/find-known-roms/`:
```sh
$ find-known-roms
```

## Known problems

Some `libretro-database` databases can't be parsed.

## Copyright

GPLv3 for everything except the files in lib/. See their header for copyright information.
