#! /bin/sh

test=$1
cp .gdbinit.vari .gdbinit
sed -i -e "s/variadic\(.*\).C\(.*\)/variadic${test}.C\2/g" .gdbinit
gdb xg++
exit 0




