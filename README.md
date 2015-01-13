b2b
===
```b2b``` (base to base) is a bash script that provides quick base conversions on the fly in your terminal.

#### Usage

Convert decimal numbers to binary:
```bash
$ b2b db 1337
10100111001
```

Convert binary numbers to hex:
```bash
$ b2b bh 11011110101011011011111011101111
DEADBEEF
```

Convert hex numbers to octal:
```bash
$ b2b ho B2B
5453
```

And so on...


#### Dependencies
```b2b``` should run in any Linux/bash environment. First install the dependencies:

* [GNU bc](http://www.gnu.org/software/bc/): An arbitrary precision calculator language


#### Install

Arch Linux users can install ```b2b``` from the [AUR](https://aur.archlinux.org/packages/b2b/).

Otherwise, copy the script to the path of your preference. I typically install custom bash scripts to ```/usr/local/bin```, so a Makefile is provided to do so:

```
# make install
```
