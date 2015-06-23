# Any audio files → CDDA FLAC Tracks

My audio collection has grown rather big. It consists of various audio files
in different formats. Most part of it is in lossless form, for example:

* FLAC files in separate tracks (various bps, sample rate, etc.);

* one big FLAC file + `.cue` file (sometimes in higher quality than I can
  perceive, in fact no one ever need something higher than CDDA standard
  44.1 kHz, 16 bit, stereo, because blind tests prove that this is ample);

* Monkey's Audio, `.ape` format (sometimes again one big file + `.cue`
  file);

* Apple Lossless, `.m4a` format;

* etc.

So, I've decided to bring my entire collection to some uniform form by
converting all sorts of files into FLAC files of CDDA quality, so that every
track is a separate file. This is the best way to store music, I think.

It feels like a nightmare to convert all the stuff manually, because I need
to:

* preserve useful tags;

* add some tags that we can infer;

* remove «comment» and «genre» tags because they are useless;

* merge every double album into one digital album;

* eliminate bonus tracks that go with classic albums;

* convert names of files too, so they all are of the same form: `NN Track
  Title.flac`, where `NN` is composition's index in album;

* fix names of some albums, for example `Abbey Road [2009 Digital Remaster]`
  should be `Abbey Road` (for I can hear that it's a remaster);

* I think it's a good idea to create playlists per album and per artist;

* I could create some reports about duration/quality of every album and save
  them as `.txt` files.

For two last tasks I have [mkm3u](https://github.com/mrkkrp/mkm3u) and
[LSA](https://github.com/mrkkrp/lsa). The rest of it is done with this
script.

## Installation

This is a Python 3 script, you will need Python 3 installed to run it. Also,
it depends on the following things that you need to install too:

* [TagLib](http://taglib.github.io/) — a library for reading and editing the
  meta-data of several popular audio formats;

* [TagLib bindings for Python](https://github.com/supermihi/pytaglib);

* [FFmpeg](https://ffmpeg.org/) — über-level audio and video converter.

TagLib and FFmpeg are available in repositories of most major distributions,
Python bindings for TabLib can be installed with `pip` quite easily too.

To install `flacize`, `cd` into the repository and execute the following:

```
# bash install.sh
```

Done. You can use `uninstall.sh` script to uninstall the software.

## Documentation

`flacize` comes with its own man page. Here is short synopsis:

```
usage: flacize [-h] [-o DIR] [-r N] [-w N] [-c N] [-p] [-d] [-s N] [-t N] [-e N]
               [--license] [--version]
               [DIR]

Convert any audio files into CDDA quality FLAC tracks

positional arguments:
  DIR                   directory to scan

optional arguments:
  -h, --help            show this help message and exit
  -o DIR, --output DIR  output directory (created if needed)
  -r N, --rate N        output sample rate (defaults to 44100 Hz)
  -w N, --width N       output sample width (defaults to 16 bit)
  -c N, --channels N    number of channels (defaults to 2)
  -p, --preserve        preserve quality of originals
  -d, --delete          delete original files after conversion
  -s N, --shift N       add N to index of every track
  -t N, --total N       specify total number of tracks N
  -e N, --crop N        crop last N tracks (e.g. remove bonus tracks)
  -a, --dont-ask        don't ask user even if cannot deduce some tag
  --license             show program's license and exit
  --version             show program's version number and exit
```

## License

Copyright © 2015 Mark Karpov

Distributed under GNU GPL, version 3.
