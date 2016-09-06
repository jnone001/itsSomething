#!/usr/bin/env bash
frameworkDestinations="/Library/Frameworks"
sdlFrameworkPath="../dependencies/SDL2/framework/SDL2.framework"

echo "looking for sdl2 framework in dependencies folder"
if [ -e $sdlFrameworkPath ]; then
    echo "moving sdl2 framework"
    sudo cp -r $sdlFrameworkPath $frameworkDestinations
fi