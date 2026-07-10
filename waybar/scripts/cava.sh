#!/bin/bash
bars="▁▂▃▄▅▆▇█"
cava -p ~/.config/cava/waybar_cava.conf | while read -r line; do
    out=""
    IFS=';' read -ra vals <<< "$line"
    for v in "${vals[@]}"; do
        [ -z "$v" ] && continue
        out+="${bars:$v:1}"
    done
    echo "$out" || break
done
