#!/bin/bash

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

    # Prompt the user for their choice
    read -p "Enter your choice (0-11): " choice

    case $choice in
        1)
            who
            ;;
        2)
            echo "Your shell directory: $SHELL"
            ;;
        3)
            echo "Home Directory: $HOME"
            ;;
        4)
            uname -a
            ;;
        5)
            echo "Current working directory: $(pwd)"
            ;;
        6)
            who | wc -l
            ;;
        7)
            df -h
            ;;
        8)
            lscpu
            ;;
        9)
            free -m
            ;;
        10)
            df -T
            ;;
        11)
            ps aux
            ;;
        0)
            echo "Exiting the script. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 0 and 11."
            ;;
    esac
done
