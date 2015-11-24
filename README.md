# mp3infov2
Get ID3v2 tag information from mp3 files.

## Description

mp3infov2 is a simple bash script to get ID3v2 tag information from a mp3 file in a specified format. It is motivated by the fact that mp3info, which can print tag information in a very flexible way, supports only ID3v1 tags and applications like id3v2 (part of id3lib), which do support ID3v2 tags, are rather limited in their flexibility to output this information. mp3infov2 supports both, the flexible output of mp3info and ID3v2 tags.

## Usage

```
mp3infov2 -p <FORMAT_STRING> FILE...
mp3infov2 [OPTION]... FILE...
```

If a format string is given with the `--print` option, the script uses id3v2 to get the tag information and prints them in the format specified. If no format string is specified (or the `--v1` option is given), the script passes the call directly to the mp3info.

### Options

The following options are available.

```
-h, --help          Show this help page
    --v1            Force usage of mp3info
-p, --print=FORMAT  Print FORMAT string with substitutions

      Available substitutions:

      %f      Filename without the path (string)
      %F      Filename with the path (string)
      %k      File size in KB (integer)

      %a      Artist (string)
      %c      Comment (string)
      %g      Musical genre (string)
      %G      Musical genre (integer)
      %l      Album name (string)
      %n      Track (integer)
      %t      Track Title (string)
      %y      Year (string)

      %r      Bitrate in KB/s (see also '-r')
      %m      Playing time: minutes only (integer)
      %s      Playing time: seconds only (integer)
      %S      Total playing time in seconds (integer)

      %%      A single percent sign

      Escape Sequences:

      \n      Newline
      \t      Horizontal tab
      \v      Vertical tab
      \b      Backspace
      \r      Carriage Return
      \f      Form Feed
      \a      Audible Alert (terminal bell)
      \xhh    Any arbitrary character specified by the hexidecimal number hh
      \ooo    Any arbitrary character specified by the octal number ooo
      \\\\      A single backslash character
```

The substitutions for the format string are identical to those from mp3info, though the latter contains some more. Thus the output of the following two commands should be identical (provided FILE contains both ID3v2 and ID3v1 tags filled with the same information):

```
mp3info -p FORMAT_STRING FILE
mp3infov2 -p FORMAT_STRING FILE
```

See `man mp3info` for all available options for mp3info.

### Example
```
mp3infov2 -p 'Title: %t\tArtist: %a\nAlbum: %l\tYear: %y\n' /path/to/file.mp3
```

## Limitations

The script makes no attempt to modify the ID3v2 tags in any way. Changing ID3v1 tags is possible since those calls are passed to mp3info which does support modifying them.

## Dependencies

* bash
* mp3info
* id3lib

## Install

```
make install
```

## Uninstall
```
make uninstall
```

## License

GPLv3
