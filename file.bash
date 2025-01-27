GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[1;37m'

printf "${GREEN}running! :D \n"
printf "${WHITE}"
echo "but first, installing apt updates."
echo "this might take a while..."
    apt list
    sudo apt update
    printf "${GREEN}installing htop!\n"
    printf "${WHITE}installing htop!\n"
    printf "${WHITE}"
    sleep 3
    sudo apt install htop

    # check if the apt command resulted in an error, $? is to mean to check for error, 
    # -ne is to mean not equal to 0 [error code]
    if [ $? -ne 0 ]; then
        # This block executes if the command resulted in an error (exit status is not 0)
        printf "${RED}apt command not found\n"
        printf "${WHITE}"
        printf "${RED}some random error occured, please wait lmao\n"
        printf "${WHITE}"
        sleep 2
        # if resulted in error: then: see if package yum exists and install
        if command -v yum &> /dev/null; then # Check if yum exists
            printf "\n"
            printf "${GREEN}yum command found\n" #found yum
            printf "${WHITE}"
            printf "${GREEN}Attempting to install htop using yum...\n"
            printf "${WHITE}"
            sleep 2
            sudo yum install htop
        else # if not found then:
            printf "${RED}yum command not found, resulting to dnf\n"
            printf "${WHITE}"
            sleep 2
            if command -v dnf &> /dev/null; then # if dnf exists: then install htop
                printf "\n"
                printf "${GREEN}dnf command found\n"
                printf "${WHITE}"
                printf "${GREEN}Attempting to install htop using dnf...\n" 
                printf "${WHITE}"
                sleep 2
                sudo dnf install htop
            else #if not found
                printf "${RED}dnf command not found, resulting to zypper\n"
                printf "${WHITE}"
                sleep 2
                if command -v zypper &> /dev/null; then
                    printf "\n"
                    printf "${GREEN}zypper command found\n"
                    printf "${WHITE}"
                    printf "${GREEN}Attempting to install htop using zypper...\n"
                    printf "${WHITE}"
                    sleep 2
                    sudo zypper install htop
                else
                    printf "${RED}zypper command not found, resulting to pacman\n"
                    printf "${WHITE}"
                    sleep 2
                    if command -v pacman &> /dev/null; then
                        printf "\n"
                        printf "${GREEN}pacman command found\n"
                        printf "${WHITE}"
                        printf "${GREEN}Attempting to install htop using pacman...\n"
                        printf "${WHITE}"
                        sleep 2
                        sudo pacman -S htop
                    else
                        printf "${RED}pacman command not found, resulting to apk\n"
                        printf "${WHITE}"
                        sleep 2
                        if command -v apk &> /dev/null; then 
                            printf "\n"
                            printf "${GREEN}apk command found\n"
                            printf "${WHITE}"
                            printf "${GREEN}Attempting to install htop using apk...\n"
                            printf "${WHITE}"
                            sleep 2
                            sudo apk add htop
                        else
                            printf "${RED}apk command not found, resulting to emerge\n"
                            printf "${WHITE}"
                            sleep 2
                            if command -v emerge &> /dev/null; then
                                printf "\n"
                                printf "${GREEN}emerge command found\n"
                                printf "${WHITE}"
                                printf "${GREEN}Attempting to install htop using emerge...\n"
                                printf "${WHITE}"
                                sleep 2
                                sudo emerge htop
                            else
                                printf "${RED}emerge command not found, resulting to xbps-install\n"
                                printf "${WHITE}"
                                sleep 2
                                if command -v xbps-install &> /dev/null; then
                                    printf "\n"
                                    printf "${GREEN}xbps-install command found\n"
                                    printf "${WHITE}"
                                    printf "${GREEN}Attempting to install htop using xbps-install...\n"
                                    printf "${WHITE}"
                                    sleep 2
                                    sudo xbps-install -S htop
                                else
                                    printf "${RED}xbps-install command not found, resulting to pkg\n"
                                    printf "${WHITE}"
                                    sleep 2
                                    if command -v pkg &> /dev/null; then
                                        printf "\n"
                                        printf "${GREEN}pkg command found\n"
                                        printf "${WHITE}"
                                        printf "${GREEN}Attempting to install htop using pkg...\n"
                                        printf "${WHITE}"
                                        sleep 2
                                        sudo pkg install htop
                                    else
                                        printf "${RED}pkg command not found, resulting to pkg_add\n"
                                        printf "${WHITE}"
                                        sleep 2
                                        if command -v pkg_add &> /dev/null; then
                                            printf "\n"
                                            printf "${GREEN}pkg_add command found\n"
                                            printf "${WHITE}"
                                            printf "${GREEN}Attempting to install htop using pkg_add...\n"
                                            printf "${WHITE}"
                                            sleep 2
                                            sudo pkg_add htop
                                        else
                                            printf "${RED}pkg_add command not found. Unable to install htop.\n"
                                            printf "${WHITE}"
                                        fi
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    else
    # but only if apt is found then this'll run LMAO,
    # its such of a long list but it does work i think
    # This block runs only if apt is found,
    # its such of a long list but it does work i think
    # i had copilot help me write all of that out
    printf "${GREEN}success, apt command found, continuing...\n\n"
    printf "${WHITE}"
fi
sleep 3
cd .
tree -a
if [ $? -ne 0 ]; then
    sudo apt install tree
    printf "${RED}tree command not found and/or package manager; apt doesn't exist\n"
    printf "${WHITE}"

else
    printf "${GREEN}success, tree command found, continuing...\n\n"
    printf "${WHITE}"
    cd .
    tree -a
fi
cd /workspaces/empty

# nano
echo "installing nano via apt"

# check if installed basically in the background
if command -v nano &> /dev/null; then
    printf "${GREEN}nano is already installed\n"
    printf "${WHITE}"
else
    printf "${RED}nano is not installed. Installing...\n"
    printf "${WHITE}"
    sudo apt install nano
    if [ $? -ne 0 ]; then
        printf "${RED}Failed to install nano\n"
        printf "${WHITE}"
    else
        printf "${GREEN}nano installed successfully\n"
        printf "${WHITE}"
    fi
fi
# still working on this
# wondering what other packages i should install...oh i know!
# python3
printf "${GREEN}installing python3 via apt"
printf "${WHITE}"
sleep 1
sudo apt install python3
if [ $? -ne 0 ]; then #if its not installed then install it done via checking it in the background
    printf "${RED}Failed to install python3\n"
    printf "${WHITE}"
    printf "${WHITE}"
    if command -v yum &> /dev/null; then # AUUUUUUUUUUGH
    if command -v yum &> /dev/null; then # Check if yum exists
        printf "${WHITE}"
        printf "${GREEN}Attempting to install python3 using yum...\n"
        printf "${WHITE}"
        sleep 2
        sudo yum install python3
    else
        printf "${RED}yum command not found, resulting to dnf\n"
        printf "${WHITE}"
        sleep 2
        if command -v dnf &> /dev/null; then
            printf "${GREEN}dnf command found\n"
            printf "${WHITE}"
            printf "${GREEN}Attempting to install python3 using dnf...\n"
            printf "${WHITE}"
            sleep 2
            sudo dnf install python3
        else
            printf "${RED}dnf command not found, resulting to zypper\n"
            printf "${WHITE}"
            sleep 2
            if command -v zypper &> /dev/null; then
                printf "${GREEN}zypper command found\n"
                printf "${WHITE}"
                printf "${GREEN}Attempting to install python3 using zypper...\n"
                printf "${WHITE}"
                sleep 2
                sudo zypper install python3
            else
                printf "${RED}zypper command not found, resulting to pacman\n"
                printf "${WHITE}"
                sleep 2
                if command -v pacman &> /dev/null; then
                    printf "${GREEN}pacman command found\n"
                    printf "${WHITE}"
                    printf "${GREEN}Attempting to install python3 using pacman...\n"
                    printf "${WHITE}"
                    sleep 2
                    sudo pacman -S python3
                else
                    printf "${RED}pacman command not found, resulting to apk\n"
                    printf "${WHITE}"
                    sleep 2
                    if command -v apk &> /dev/null; then
                        printf "${GREEN}apk command found\n"
                        printf "${WHITE}"
                        printf "${GREEN}Attempting to install python3 using apk...\n"
                        printf "${WHITE}"
                        sleep 2
                        sudo apk add python3
                    else
                        printf "${RED}apk command not found, resulting to emerge\n"
                        printf "${WHITE}"
                        sleep 2
                        if command -v emerge &> /dev/null; then
                            printf "${GREEN}emerge command found\n"
                            printf "${WHITE}"
                            printf "${GREEN}Attempting to install python3 using emerge...\n"
                            printf "${WHITE}"
                            sleep 2
                            sudo emerge python3
                        else
                            printf "${RED}emerge command not found, resulting to xbps-install\n"
                            printf "${WHITE}"
                            sleep 2
                            if command -v xbps-install &> /dev/null; then
                                printf "${GREEN}xbps-install command found\n"
                                printf "${WHITE}"
                                printf "${GREEN}Attempting to install python3 using xbps-install...\n"
                                printf "${WHITE}"
                                sleep 2
                                sudo xbps-install -S python3
                            else
                                printf "${RED}xbps-install command not found, resulting to pkg\n"
                                printf "${WHITE}"
                                sleep 2
                                if command -v pkg &> /dev/null; then
                                    printf "${GREEN}pkg command found\n"
                                    printf "${WHITE}"
                                    printf "${GREEN}Attempting to install python3 using pkg...\n"
                                    printf "${WHITE}"
                                    sleep 2
                                    sudo pkg install python3
                                else
                                    printf "${RED}pkg command not found, resulting to pkg_add\n"
                                    printf "${WHITE}"
                                    sleep 2
                                    if command -v pkg_add &> /dev/null; then
                                        printf "${GREEN}pkg_add command found\n"
                                        printf "${WHITE}"
                                        printf "${GREEN}Attempting to install python3 using pkg_add...\n"
                                        printf "${WHITE}"
                                        sleep 2
                                        sudo pkg_add python3
                                    else
                                        printf "${RED}pkg_add command not found. Unable to install python3.\n"
                                        printf "${WHITE}"
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi
else 
    printf "${GREEN}python3 installed successfully\n"
    printf "${WHITE}"
fi
# uhhh i felt like i should've done like manual...ah screw it i'll do it rn
# ooh, and git too prob

# man
printf "${GREEN}install manual/man via apt"
sudo apt install man # Ensure to install `man-db` and `glibc-doc` as well
if [ $? -ne 0 ]; then
        # fail
        printf "${RED}failed, starting other packages..."
        printf "${WHITE}"
        sleep 2
            if command -v yum &> /dev/null; then
                printf "${GREEN}yum command found\n"
                printf "${WHITE}"
                printf "${GREEN}Attempting to install"
                printf "${WHITE}"
                sleep 1
                sudo yum install man
                    else
                        printf "${RED}yum command not found, resulting to dnf\n"
                        printf "${WHITE}"
                        sleep 2
                        if command -v dnf &> /dev/null; then
                            printf "${GREEN}dnf command found\n"
                            printf "${WHITE}"
                            printf "${GREEN}Attempting to install"
                            printf "${WHITE}"
                            sleep 1
                            sudo dnf install man
                            else
                                printf "${RED}dnf package not found, resulting to zypper."
                                printf "${WHITE}"
                                sleep 2
                                if command -v zypper &> /dev/null; then
                                    printf "${GREEN}zypper command found\n"
                                    printf "${WHITE}"
                                    printf "${GREEN}Attempting to install"
                                    printf "${WHITE}"
                                    sleep 1
                                    sudo zypper install man
                                        else
                                            printf "${RED}zypper package not found, resulting to pacman."
                                            printf "${WHITE}"
                                            sleep 2
                                            printf "${RED}pacman package not found, resulting to apk.\n"
                                            printf "${WHITE}"
                                            printf "${WHITE}"
                                    if command -v pacman &> /dev/null; then
                                        printf "${GREEN}pacman command found\n"
                                        printf "${WHITE}"
                                        printf "${GREEN}Attempting to install"
                                        printf "${WHITE}"
                                        sleep 1
                                        sudo pacman -S man
                                            else
                                                printf "${RED}pacman package not found, resulting to apk."
                                                if command -v apk &> /dev/null; then
                                                    printf "${GREEN}apk command found\n"
                                                    printf "${WHITE}"
                                                    printf "${GREEN}Attempting to install"
                                                    printf "${WHITE}"
                                                    sleep 2
                                                    sudo apk add man
                                                        else
                                                            printf "${RED}apk package not found, resulting to emerge."
                                                            printf "${WHITE}"
                                                            sleep 2
                                                            if command -v emerge &> /dev/null; then
                                                                printf "${GREEN}emerge command found\n"
                                                                printf "${WHITE}"
                                                                printf "${GREEN}Attempting to install"
                                                                printf "${WHITE}"
                                                                sleep 1
                                                                sudo emerge man
                                                            fi
                                                fi
                                    fi
                                fi
                        fi
            fi
fi  
        # success
        echo "man installed, now man-db"
        if [ $? -ne 0 ]; then
        # fail
        printf "${RED}failed, starting other packages..."
        printf "${WHITE}"
        sleep 2
            if command -v yum &> /dev/null; then
            printf "${GREEN}yum command found\n"
            printf "${WHITE}"
            printf "${GREEN}Attempting to install"
            printf "${WHITE}"
            sleep 1
            sudo yum install man-db
                else
                printf "${RED}yum command not found, resulting to dnf\n"
                printf "${WHITE}"
                sleep 2
                if command -v dnf &> /dev/null; then
                    printf "${GREEN}dnf command found\n"
                    printf "${WHITE}"
                    printf "${GREEN}Attempting to install"
                    printf "${WHITE}"
                    sleep 1
                    sudo dnf install man-db
                    else
                    printf "${RED}dnf package not found, resulting to zypper."
                    printf "${WHITE}"
                    sleep 2
                    if command -v zypper &> /dev/null; then
                        printf "${GREEN}zypper command found\n"
                        printf "${WHITE}"
                        printf "${GREEN}Attempting to install"
                        printf "${WHITE}"
                        sleep 1
                        sudo zypper install man-db
                        else
                            printf "${RED}zypper package not found, resulting to pacman."
                            printf "${WHITE}"
                            sleep 2
                            echo "why me brah"
                        if command -v pacman &> /dev/null; then
                        printf "${GREEN}pacman command found\n"
                        printf "${WHITE}"
                        printf "${GREEN}Attempting to install"
                        printf "${WHITE}"
                        sleep 1
                        sudo pacman -S man-db
                            else
                            printf "${RED}pacman package not found, resulting to apk."
                            if command -v apk &> /dev/null; then
                                printf "${GREEN}apk command found\n"
                                printf "${WHITE}"
                                printf "${GREEN}Attempting to install"
                                printf "${WHITE}"
                                sleep 2
                                sudo apk add man-db
                                else
                                    printf "${RED}apk package not found, resulting to emerge."
                                    printf "${WHITE}"
                                    sleep 2
                                    if command -v emerge &> /dev/null; then
                                    printf "${GREEN}emerge command found\n"
                                    printf "${WHITE}"
                                    printf "${GREEN}Attempting to install"
                                    printf "${WHITE}"
                                    sleep 1
                                    sudo emerge man-db
                                        printf "${RED}emerge package not found. Please install it manually."
                                        printf "${RED}emerge package not found, just...install it manually ig"
                                    fi
                            fi
                        fi
                    fi
                fi
            fi
    fi 
else
    echo 'installed.'

fi
    
printf "\n"
echo "ended"