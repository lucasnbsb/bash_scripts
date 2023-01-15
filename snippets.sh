#=======================================================================
# adding stuff to the .bashrc file
#=======================================================================
echo -e "\n'" >> ~/.bashrc 

source ~/.bashrc


#=======================================================================
# looping through an array of strings without the space delimiter
#=======================================================================
IFS=""
#put the aliases in an array
aliases=(
    "alias code='flatpak run com.visualstudio.code .'"
    "alias spring='/home/lucas/Desktop/sts-4.17.1.RELEASE/./SpringToolSuite4 & disown'"
    )
# loop the array and check if the lines are in the file. if not then add
for t in ${aliases[@]}; 
do 
    echo "$t"
done