#!/bin/bash

##
## Initialize variables
##
conversion=""
value=""

##
## Usage output function
##
usage() {
    echo
cat <<EOF
Usage: b2b <conversion> <value>

Options:
  -h|--help         Show this help text and exit

Conversions:
  bd        Convert binary value to decimal
  bh        Convert binary value to hex
  bo        Convert binary value to octal
  db        Convert decimal value to binary
  dh        Convert decimal value to hex
  do        Convert decimal value to octal
  hb        Convert hex value to binary
  hd        Convert hex value to decimal
  ho        Convert hex value to octal
  od        Convert octal value to decimal
  ob        Convert octal value to binary
  oh        Convert octal value to hex

Examples:
  b2b hb DEADBEEF   # convert hex to binary
  b2b bd 101010     # convert binary to decimal
  b2b do 2393911    # convert decimal to octal
EOF
    echo
}

##
## Convert binary value to decimal
##
b2d() {
    echo "obase=10;ibase=2; $1" | bc
}

##
## Convert binary value to hex
##
b2h() {
    echo "obase=16;ibase=2; $1" | bc
}

##
## Convert binary value to octal
##
b2o() {
    echo "obase=8;ibase=2; $1" | bc
}

##
## Convert decimal value to binary
##
d2b() {
    echo "obase=2;ibase=10; $1" | bc
}

##
## Convert decimal value to hex
##
d2h() {
    echo "obase=16;ibase=10; $1" | bc
}

##
## Convert decimal value to octal
##
d2o() {
    echo "obase=8;ibase=10; $1" | bc
}

##
## Convert hex value to binary
##
h2b() {
    echo "obase=2;ibase=16; $1" | bc
}

##
## Convert hex value to decimal
##
h2d() {
    echo "obase=10;ibase=16; $1" | bc
}

##
## Convert hex value to octal
##
h2o() {
    echo "obase=8;ibase=16; $1" | bc
}

##
## Convert octal value to binary
##
o2b() {
    echo "obase=2;ibase=8; $1" | bc
}

##
## Convert octal value to decimal
##
o2d() {
    echo "obase=10;ibase=8; $1" | bc
}

##
## Convert octal value to hex
##
o2h() {
    echo "obase=16;ibase=8; $1" | bc
}

##
## Parse user input
##
parse_args() {
    if [ "$#" -ne 2 ]; then
        echo "invalid number of arguments"
        usage
        exit 1
    fi

    while [[ -n "$1" ]]; do
        case "$1" in
            bd)             conversion=b2d;;
            bh)             conversion=b2h;;
            bo)             conversion=b2o;;
            db)             conversion=d2b;;
            dh)             conversion=d2h;;
            do)             conversion=d2o;;
            hb)             conversion=h2b;;
            hd)             conversion=h2d;;
            ho)             conversion=h2o;;
            od)             conversion=o2d;;
            ob)             conversion=o2b;;
            oh)             conversion=o2h;;
            -h|--help)      usage; exit 0;;
            *)              value=$@;;
        esac
        shift
    done
}


##
## Main entry point
##
main() {
    case "$conversion" in
        b2d)    b2d $value;;
        b2h)    b2h $value;;
        b2o)    b2o $value;;
        d2b)    d2b $value;;
        d2h)    d2h $value;;
        d2o)    d2o $value;;
        h2b)    h2b $value;;
        h2d)    h2d $value;;
        h2o)    h2o $value;;
        o2b)    o2b $value;;
        o2h)    o2h $value;;
        o2d)    o2d $value;;
        *)      echo "ERROR: invalid argument";;
    esac
}

parse_args "$@"
main
