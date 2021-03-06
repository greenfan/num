#!/bin/sh
############################################################################
#
# num-trimean-test.sh
#
##

. minitest.sh
num=${NUM:-num}

##
#
# trimean
#
##

f="trimean"

x=$(echo "1 2 3 4 99" | "$num" $f) &&
    assert_eq 8.875 "$x" "$f with row"

x=$(echo "1\n2\n3\n4\n99" | "$num" $f) &&
    assert_eq 8.875 "$x" "$f with col"

x=$(echo "1 2 3 4 99\n5 6 7 8 99" | "$num" $f records) &&
    assert_eq "8.875"$'\n'"12.625" "$x" "$f with records"
