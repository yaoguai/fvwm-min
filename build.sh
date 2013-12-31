#!/bin/sh

print_cfg ()
{
    echo "#"
    echo "# Style: $1"
    echo "#"
    echo "DefaultColors \\#${9} \\#${8}"
    echo "MenuStyle * Background \\#${6}"
    echo "MenuStyle * Foreground \\#${7}"
    echo "Style * BackColor \\#${4}"
    echo "Style * ForeColor \\#${5}"
    echo "Style * HilightBack \\#${2}"
    echo "Style * HilightFore \\#${3}"
    echo "Style * BorderWidth $11"
    echo "Style * HandleWidth $11"
    echo "Style FvwmPager BackColor \\#000000"
    echo "Style FvwmPager BorderWidth 1"
    echo "Style FvwmPager HandleWidth 1"
    echo "Style FvwmPager HilightBack \\#000000"
    echo "Exec exec xsetroot -solid \\#${10}"
    return $?
}

cfg ()
{
    print_cfg "$@" > "styles/$1"
    echo "styles/$1"
}

cfg cde     eeaa66 ffffff   999999 ffffff \
            4992a7 ffffff   4992a7 ffffff \
            cad1d9 6

cfg console 5588cc ffffff   777777 ffffff \
            666666 ffffff   666666 ffffff \
            111111 6

cfg forest  77cc66 000000   66aa77 ddffdd \
            777777 ffffff   666666 ffffff \
            303030 7

cfg green   00cc55 000000   666666 44ff77 \
            666666 ffffff   666666 ffffff \
            111111 6

cfg min     d3d3d3 000000   d3d3d3 888888 \
            d3d3d3 000000   d3d3d3 000000 \
            444449 7

cfg mwm     5f9ea0 ffffff   d3d3d3 000000 \
            d3d3d3 000000   d3d3d3 000000 \
            404040 7

cfg oxygen  c0d0e0 000000   c0d0e0 708090 \
            c0d0e0 000000   c0d0e0 000000 \
            eeeeee 6

cfg rain    66dd66 000000   9999a3 ffffff \
            99dd99 000000   99dd99 000000 \
            c3c3cc 7

cfg solar   bb5588 ffffff   b9b9c9 000000 \
            b9b9c9 000000   b9b9c9 000000 \
            99aacc 5

cfg t64     eeaa66 ffffff   999999 ffffff \
            939393 ffffff   939393 ffffff \
            99aabb 6

cfg twm     00b099 ffffff   00b099 d7d7d7 \
            d3d3d3 000000   d3d3d3 000000 \
            bbccdd 5

cfg ultra   997766 ffffff   ccaa99 000000 \
            ccaa99 000000   ccaa99 000000 \
            bbc0dd 7
