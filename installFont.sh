unzip JetBrainsMono-2.304.zip -d jetbrains

mv ./jetbrains/fonts/ttf/*.ttf /usr/share/fonts

fc-cache -f -v

rm -rf ./jetbrains