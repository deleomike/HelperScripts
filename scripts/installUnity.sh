#!/usr/bin

sudo apt install -y libgconf-2-4

wget ~/Downloads/https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage?_ga=2.76083217.581605124.1599528869-906685369.1599528869

chmod +x ~/Downloads/UnityHub.AppImage

#Step into making the directory to avoid errors
mkdir ~/Unity
mkdir ~/Unity/Hub
mkdir ~/Unity/Hub/Editor

mv ~/Downloads/UnityHub.AppImage ~/Unity/Hub/Editor

#Install Unity 2018
~/Unity/Hub/Editor/UnityHub.AppImage unityhub://2018.2.5f1/3071d1717b71
