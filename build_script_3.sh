#!/bin/bash


#######################################################################
# Provide a menu for users about what information they want to check

# Using the switch case display output for the selected options below:

# Currently logged users
# Your shell directory
# Home Directory
# OS name & version
# Current working directory
# Number of users logged in
# Hard disk information
# CPU information
# Memory information
# File system information
# Currently running process 

# Helpful Labex resources:
# Linux Commands: df, du, time
# Who Am I
# Linux User Group and File Permissions
# Environment Variable and Find Files
#######################################################################

# Infinite loop to keep displaying the menu until the user chooses to exit (0)
while true; do
    # Display the menu
    echo "System Information Menu:"
    
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home Directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Hard disk information"
    echo "8. CPU information"
    echo "9. Memory information"
    echo "10. File system information"
    echo "11. Currently running processes"
    echo "0. Exit"

    # Prompt the user for their choice and store it in the 'choice' variable
    read -p "Select an option (0-11): " choice

    # Use a case statement to perform actions based on the user's choice
    case $choice in
        1)
            # Display currently logged users using the 'who' command
            who
            ;;
        2)
            # Display the user's shell directory using the 'SHELL' environment variable
            echo "Your shell directory: $SHELL"
            ;;
        3)
            # Display the user's home directory using the 'HOME' environment variable
            echo "Home Directory: $HOME"
            ;;
        4)
            # Display the OS name and version using the 'uname' command
            uname -a
            ;;
        5)
            # Display the current working directory using the 'pwd' command
            echo "Current working directory: $(pwd)"
            ;;
        6)
            # Count and display the number of users logged in using 'who' and 'wc' commands
            who | wc -l
            ;;
        7)
            # Display hard disk information using the 'df' command with the '-h' option
            df -h
            ;;
        8)
            # Display CPU information using the 'lscpu' command
            lscpu
            ;;
        9)
            # Display memory information using the 'free' command with the '-m' option
            free -m
            ;;
        10)
            # Display file system information using the 'df' command with the '-T' option
            df -T
            ;;
        11)
            # Display currently running processes using the 'ps' command with 'aux' options
            ps aux
            ;;
        0)
            # If the user chooses 0, exit the script with a goodbye message
            echo "Exiting the menu. Goodbye!"
            exit 0
            ;;
        *)
            # If the user enters an invalid choice, display an error message
            echo "Invalid choice. Please enter a number between 0 and 11."
            ;;
    esac
done
