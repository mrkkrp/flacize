# Any audio files → CDDA FLAC Tracks

*This is work in process, but it won't take long time to finish.*

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

This is a Python 3 script, you will need Python 3 installed to run it.

To install the software `cd` into the repository and execute the following:

```
# bash install.sh
```

Done. You can use `uninstall.sh` script to uninstall the software. Please
note that you'll need `xxx` and `yyy` to actually convert anything, so
install them too.

## Documentation

Coming soon…

## License

Copyright © 2015 Mark Karpov

Distributed under GNU GPL, version 3.
