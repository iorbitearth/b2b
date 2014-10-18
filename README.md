b2b
===

Simple bash scripts to perform common base conversions (base to base) on the command line

#### Usage
```b2b``` allows for quick base conversions on the fly in your terminal.

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
$  h2o B2B
2859
```

And so on...


#### Dependencies
The ```b2b``` scripts should run in any Linux/bash environment. First install the dependencies:

* [GNU bc](http://www.gnu.org/software/bc/): An arbitrary precision calculator language


#### Install
Copy the scripts to the path of your preference. I typically install custom bash scripts to ```/usr/local/bin```, so I've provided a Makefile to do so:

```
# make install
```
