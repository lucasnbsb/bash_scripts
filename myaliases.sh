# puts the commands inside the array aliases into the .bashrc file and sources it

# sets the delimiter for the strings
IFS=""
#put the aliases in an array
aliases=(
    "alias code='flatpak run com.visualstudio.code .'"
    "alias spring='/home/lucas/Desktop/sts-4.17.1.RELEASE/./SpringToolSuite4 & disown'"
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