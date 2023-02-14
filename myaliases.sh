# puts the commands inside the array aliases into the .bashrc file and sources it

# sets the delimiter for the strings
IFS=""
#put the aliases in an array
aliases=(
    #"alias spring='/home/lucas/Desktop/sts-4.17.1.RELEASE/./SpringToolSuite4 & disown'"
    #"alias diploma='(code /home/lucas/diploma-digital-frontend & disown) && (flatpak run io.dbeaver.DBeaverCommunity & disown) && (/home/lucas/Desktop/sts-4.17.1.RELEASE/./SpringToolSuite4 & disown) && exit'"
    "alias off='shutdown now'"
    "alias fone='until bluetoothctl connect C0:14:41:2F:B3:A7; do  echo ...  ; sleep 1; done'"
    )
# loop the array and check if the lines are in the file. if not then add
for t in ${aliases[@]}; 
do 
    if grep -R "$t" ~/.bashrc >> /dev/null; then
        echo -e "Alredy added: $t"
    else
        echo -e "Adding alias $t"
        echo -e "\n$t" >> ~/.bashrc
    fi
done

source ~/.bashrc