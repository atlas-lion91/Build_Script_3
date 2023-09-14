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


---


## Usage

1. Save the script to a file, e.g., `system_info.sh`.
2. Make the script executable: `chmod +x system_info.sh`.
3. Run the script: `./system_info.sh`.
4. Choose a menu option by entering a number between 0 and 11.


---


## Script Explanation

The script uses a `while` loop to keep displaying the menu and processing user input until the user chooses to exit. Here's an explanation of key parts of the script:

- The `echo` command is used to display text messages on the screen.
- The `read -p` command is used to get input from the user, displaying a prompt.
- A `case` statement is used to perform different actions based on the user's choice.
- Each menu option corresponds to a specific command or set of commands for retrieving system information.
- The script includes error handling for invalid choices.


---


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
Linux ip-172-31-46-82 6.2.0-1010-aws #10~22.04.1-Ubuntu SMP Wed Aug 16 18:00:32 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```
---


## Error Handling
The script includes error handling for the following scenarios:

If the user enters an invalid choice (not a number between 0 and 11), it displays an error message and allows the user to try again.
If the user chooses option 0 to exit, the script displays a goodbye message and exits the menu.


---


## Optimization

While the provided script is functional and serves its purpose well, there are opportunities for optimization and further development:

### 1. User Input Validation
   -  Currently, the script checks for an invalid choice and displays an error message. However, it does not handle non-numeric inputs or inputs outside the specified range. Adding input validation to ensure that the user enters a valid number would improve user experience.
   
### 2. Error Handling
   -  While the script handles invalid choices and exiting gracefully, it could benefit from more detailed error messages. For example, if a user selects an option that requires superuser privileges, a message explaining this could be added.

### 3. Extending System Information
   - The script provides basic system information. Depending on the use case, you might consider extending it to provide more detailed or customized system data.

### 4. Script Usability
   - The script could be more user-friendly by adding an option to display a brief description of each menu item before the user makes a selection. This can help users understand the purpose of each option better.


### 5. Error Handling and Logging
   - Implementing more advanced error handling and logging mechanisms could be beneficial, especially for system administration tasks. This would enable better tracking of issues and diagnostics.


---

## Conclusion
This Bash script provides a user-friendly way to access various system information. It can be a useful tool for users and system administrators to quickly retrieve important details about their system.
