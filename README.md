# Find Known ROMs

Look for known ROM dumps in a directory, matched against a ClrMamePro data file.

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
- [lua-amalg](https://github.com/siffiejoe/lua-amalg) (to create the stand-alone binary)

And a directory containing ROM `.dat` files in the ClrMamePro format,
such as a checkout of [libretro-database](https://github.com/libretro/libretro-database),
or any other compatible `.dat` files. Install the `.dat` files you're
interested in in the `~/.local/share/find-known-roms/` directory if you
want to avoid having to pass a path each time.

You would however be well advised to pick `.dat` files that are interesting to you,
as `libretro-database`'s full set takes a long long while to parse. All depends
on your use.

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

## Limitations

Only supports the ClrMamePro format. [Other formats](https://github.com/SabreTools/SabreTools/wiki/DAT-File-Formats)
exist, so supporting them might be nice. Send patches.

## Uses

This was used to find [30 hidden games](https://twitter.com/Micro_Repairs/status/1154841219358498818) in one Sega Ages 2500 compilation.

## Copyright

GPLv3 for everything except the files in lib/. See their header for copyright information.
