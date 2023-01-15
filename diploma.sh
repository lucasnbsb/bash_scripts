#! /usr/bin/bash
# abre todos os programas do ambiente do diploma digital
nohup flatpak run com.visualstudio.code /home/lucas/diploma-digital-frontend & disown

nohup flatpak run io.dbeaver.DBeaverCommunity & disown

/home/lucas/Desktop/sts-4.17.1.RELEASE/./SpringToolSuite4 & disown