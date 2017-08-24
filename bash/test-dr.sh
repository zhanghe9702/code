#! /bin/sh

test=$1
cp .gdbinit.dr .gdbinit
sed -i -e "s/dr\(.*\).C\(.*\)/dr${test}.C\2/g" .gdbinit
gdb xg++
exit 0




