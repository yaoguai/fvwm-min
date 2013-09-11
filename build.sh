#!/bin/sh

cfg ()
{
    name="$1"

    mkdir -p "out/${name}" || return 1
    cp config.tmpl "out/${name}/config" || return 1
    sed -i -e "s/{{HILIGHT_BG}}/#${2}/g" "out/${name}/config"
    sed -i -e "s/{{HILIGHT_FG}}/#${3}/g" "out/${name}/config"
    sed -i -e "s/{{NORMAL_BG}}/#${4}/g" "out/${name}/config"
    sed -i -e "s/{{NORMAL_FG}}/#${5}/g" "out/${name}/config"
    sed -i -e "s/{{MENU_BG}}/#${6}/g" "out/${name}/config"
    sed -i -e "s/{{MENU_FG}}/#${7}/g" "out/${name}/config"
    sed -i -e "s/{{DEFAULT_BG}}/#${8}/g" "out/${name}/config"
    sed -i -e "s/{{DEFAULT_FG}}/#${9}/g" "out/${name}/config"
    sed -i -e "s/{{BG_COLOR}}/#${10}/g" "out/${name}/config"
    sed -i -e "s/{{BD_WIDTH}}/${11}/g" "out/${name}/config"
    return $?
}

cfg cde     eeaa66 ffffff   999999 ffffff \
            4992a7 ffffff   4992a7 ffffff \
            ccddee 6

cfg forest  77cc55 000000   66aa77 ddffdd \
            777777 ffffff   666666 ffffff \
            303030 7

cfg kr      6666cc ffffff   cccccc 000000 \
            cccccc 000000   cccccc 000000 \
            bbbbcc 7

cfg marsh   66bb66 ffffff   9999aa ffffff \
            99dd99 000000   33bb66 ffffff \
            c3c3cc 7

cfg min     d3d3d3 000000   d3d3d3 999999 \
            d3d3d3 000000   d3d3d3 000000 \
            333333 7

cfg mwm     5f9ea0 ffffff   d3d3d3 000000 \
            d3d3d3 000000   d3d3d3 000000 \
            333333 7

cfg solar   bb5588 ffffff   b0b0c0 000000 \
            b0b0c0 000000   b0b0c0 000000 \
            bbccdd 6

cfg tea     77dd66 000000   d3d3d3 000000 \
            d3d3d3 000000   d3d3d3 000000 \
            bbbbcc 7

cfg vaxen   997766 ffffff   ccaa99 000000 \
            ccaa99 000000   ccaa99 000000 \
            bbbbdd 7
