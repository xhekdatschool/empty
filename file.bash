GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[1;37m'

printf "${GREEN}running! :D \n"
printf "${WHITE}"
echo "but first, installing apt updates."
echo "this might take a while..."
    apt list
        sudo apt full-upgrade
    printf "${WHITE}installing htop!\n"
    printf "${WHITE}"
    sleep 3
    sudo apt install htop

    # Check if the apt command resulted in an error
    if [ $? -ne 0 ]; then
        # This block executes if the command resulted in an error (exit status is not 0)
        printf "${RED}apt command not found\n"
        printf "${WHITE}"
        # This block executes if the specific error code 100 occurs
        printf "${RED}Specific error occurred: Error code 100\n"
        printf "${WHITE}"
        # Add additional commands to handle this specific error
        if command -v yum &> /dev/null; then
            printf "\n"
            printf "${GREEN}yum command found\n"
            printf "${WHITE}"
            printf "${GREEN}Attempting to install htop using yum...\n"
            printf "${WHITE}"
            sleep 2
            sudo yum install htop
        else
            printf "${RED}yum command not found, resulting to dnf\n"
            printf "${WHITE}"
            sleep 2
            if command -v dnf &> /dev/null; then
                printf "\n"
                printf "${GREEN}dnf command found\n"
                printf "${WHITE}"
                printf "${GREEN}Attempting to install htop using dnf...\n"
                printf "${WHITE}"
                sleep 2
                sudo dnf install htop
            else
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
    # This block executes if the command was successful (exit status is 0)
    printf "${GREEN}success, apt command found, continuing...\n\n"
    printf "${WHITE}"
fi

sleep 3
clear
printf "running tree and/or seeing if it exists...\n"
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
fi
cd /workspaces/empty

# nano
echo "installing nano via apt"

# Check if nano is installed
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

echo "installing xdotool via apt"
echo "installing xdotool via apt"
# Check if xdotool is installed
if ! command -v xdotool &> /dev/null; then
    printf "${RED}xdotool not found. Installing...\n"
    printf "${WHITE}"
    if command -v apt &> /dev/null; then
        sudo apt-get install xdotool
    elif command -v yum &> /dev/null; then
        sudo yum install xdotool
    elif command -v dnf &> /dev/null; then
        sudo dnf install xdotool
    elif command -v zypper &> /dev/null; then
        sudo zypper install xdotool
    elif command -v pacman &> /dev/null; then
        sudo pacman -S xdotool
    elif command -v apk &> /dev/null; then
        sudo apk add xdotool
    elif command -v emerge &> /dev/null; then
        sudo emerge x11-misc/xdotool
    elif command -v xbps-install &> /dev/null; then
        sudo xbps-install -S xdotool
    elif command -v pkg &> /dev/null; then
        sudo pkg install xdotool
    else
        printf "${RED}No supported package manager found to install xdotool\n"
        printf "${WHITE}"
        exit 1
    fi
fi

sleep 1
echo "ended"