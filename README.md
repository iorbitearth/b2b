b2b
===
```b2b``` is a collection of simple bash scripts that provide quick base conversions on the fly in your terminal.

#### Usage

Convert decimal numbers to binary (d2b):
```bash
$ d2b 1337
10100111001
```

Convert binary numbers to hex:
```bash
$ b2h 11011110101011011011111011101111
DEADBEEF
```

Convert hex numbers to octal:
```bash
$ h2o B2B
2859
```

And so on...


#### Dependencies
The ```b2b``` scripts should run in any Linux/bash environment. First install the dependencies:

* [GNU bc](http://www.gnu.org/software/bc/): An arbitrary precision calculator language


#### Install

Arch Linux users can install ```b2b``` from the [AUR](https://aur.archlinux.org/packages/b2b/).

Otherwise, copy the scripts to the path of your preference. I typically install custom bash scripts to ```/usr/local/bin```, so a Makefile is provided to do so:

```
# make install
```
