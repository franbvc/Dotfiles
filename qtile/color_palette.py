#!/usr/bin/env python3

palette_list = [
    "#282a36",
    "#44475a",
    "#44475a",
    "#f8f8f2",
    "#6272a4",
    "#8be9fd",
    "#50fa7b",
    "#ffb86c",
    "#ff79c6",     
    "#bd93f9",
    "#ff5555",
    "#f1fa8c"
]

color_palette = {
    "background"   : palette_list[0],
    "current line" : palette_list[1],
    "selection"    : palette_list[2],
    "foreground"   : palette_list[3],
    "comment"      : palette_list[4],
    "cyan"         : palette_list[5],
    "green"        : palette_list[6],  
    "orange"       : palette_list[7],
    "pink"         : palette_list[8],
    "purple"       : palette_list[9],
    "red"          : palette_list[10],
    "yellow"       : palette_list[11]
    
}

color_name = [i for i in color_palette.keys()]

print(palette_list)
print(color_palette)
print(color_name)

