#!/bin/bash
# -- WARNING -- This is an example file. Change this according to your needs.

#This is where you put the directory of your JS files.
files_root_directory="/home/user/projects/js-program/";
linker_files=(
    #Libraries
    "libraries/library.js"
    #App
    "app/users.js"
    "feelings/happy.js"
    "feelings/sad.js"
    "app/appy.js"
    #Desktop
    "desktop/shell.js"
    "desktop/window-manager.js"
    #Game
    "game/player.js"
    "game/game.js"
)
# The end result HTML file will be a combination of all of these files in the order they are specified