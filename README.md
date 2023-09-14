# Bash Script for Displaying System Information


## Purpose:

The purpose of this Bash script is to provide a menu-based interface for users to retrieve various system information on a Unix-like system. Users can choose from a list of options, and the script will display the relevant system information based on their selection. This script serves as a tool for quickly checking essential system details, making it useful for both educational purposes and practical system administration tasks.


---


## System Information Menu:

The menu offers the following options:

1. **Currently logged users**: Displays information about the currently logged-in users.
2. **Your shell directory**: Shows the directory where the user's shell is located.
3. **Home Directory**: Displays the user's home directory.
4. **OS name & version**: Provides information about the operating system name and version.
5. **Current working directory**: Shows the current directory in which the script is running.
6. **Number of users logged in**: Counts and displays the number of users currently logged in.
7. **Hard disk information**: Displays information about the available hard disk space.
8. **CPU information**: Provides information about the CPU.
9. **Memory information**: Shows memory-related information.
10. **File system information**: Displays information about the file system.
11. **Currently running processes**: Lists the currently running processes.
0. **Exit**: Allows the user to exit the script.

## Usage

1. Save the script to a file, e.g., `system_info.sh`.
2. Make the script executable: `chmod +x system_info.sh`.
3. Run the script: `./system_info.sh`.
4. Choose a menu option by entering a number between 0 and 11.

## Script Explanation

The script uses a `while` loop to keep displaying the menu and processing user input until the user chooses to exit. Here's an explanation of key parts of the script:

- The `echo` command is used to display text messages on the screen.
- The `read -p` command is used to get input from the user, displaying a prompt.
- A `case` statement is used to perform different actions based on the user's choice.
- Each menu option corresponds to a specific command or set of commands for retrieving system information.
- The script includes error handling for invalid choices.

## Example Usage

```bash
$ ./system_info.sh
System Information Menu:
1. Currently logged users
2. Your shell directory
3. Home Directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Hard disk information
8. CPU information
9. Memory information
10. File system information
11. Currently running processes
0. Exit
Enter your choice (0-11): 4
Linux ubuntu 5.4.0-54-generic #60-Ubuntu SMP Fri Nov 6 10:37:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux

