#! /bin/sh

echo $(find $1 -type f | shuf -n1)
