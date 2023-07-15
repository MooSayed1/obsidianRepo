Commands for arch Linux:
By Mohamed Elsayed Rabie
1. `pwd` - print the current working directory.
2. `cd` - change directory to navigate to any directory or folder.
3. `touch` - create new empty files.
4. `nano` - open the nano text editor.
5. `vim` or `nvim` - open the Vim text editor, a more powerful alternative to nano.

**ls command:**

- **`ls`**: List files and directories in the current directory.
- **`ls -a`**: Show all items, including hidden files and directories (e.g., configuration files), in the current directory.
- Permissions are displayed in the following format: **`drwxr-xr-x`**, where the first character (**`d`**) indicates a directory.
- Permissions are divided into three sets of three characters each: user, group, and other.
- The characters used for permissions are **`r`** (read), **`w`** (write), and **`x`** (execute).
- **`ls -l`**: Display detailed information about files and directories, including permissions, ownership, size, and modification time.

**Command for user management and file operations:**

- **`su`**: Switch to the root user.
- **`passwd`**: Change the password for the current user (not root).
- To change the root password, first use the **`su`** command to switch to the root user, and then use **`passwd`** followed by the username to change the password.

**File and directory operations:**

- **`mkdir`**: Create a new folder or directory.
- **`cp`**: Copy files or directories from one location to another.
- **`mv`**: Move or rename files and directories.
- **`sl`**: Display a moving train across the terminal (fun command).
- **`cmatrix`**: Create a terminal appearance similar to the "Matrix" movie.

**Find and Locate Commands:**

- **`find . -name filename`**: Search for files or directories with a specific name (**`filename`**) starting from the current directory (**`.`**). It will display the path of the found file(s).
- **`locate`**: A command used to quickly search for files and directories on the system. Note that **`locate`** needs to be installed first using the command **`sudo pacman -S mlocate`**.
- To use **`locate`**, the database needs to be updated before each search. You can update the database by running the command **`sudo updatedb`**.
- **`locate -b '\\name'`**: Search the database for files or directories with an exact name (**`name`**) without any additional characters.

**User-related and file operations:**

- **`whoami`**: Displays the name of the current user.
- **`rm -r nameofDirectory`**: Removes a directory and its contents recursively.
- **`rm nameofFile`**: Removes a file. (work even directory have a files enter it)..
- **`rmdir nameofdir`**: Removes an empty directory directly. If the directory contains files or other directories, this command will not work.
- **`cat nameoffile`**: Displays the contents of a file.
- **`echo "Hello Linux" > filename`**: Deletes the previous content of the file and writes "Hello Linux" into it.
- Use **`echo "Hello Linux" >> filename`** to append "Hello Linux" to the existing content of the file.
- **`grep ri "word" Desktop/`**: Searches for the word "word" in files under the Desktop directory, ignoring case sensitivity.
- **`htop`** & **`top`**: Commands to check the usage of RAM and CPU processes. **`htop`** provides a more advanced and interactive interface.

#Wildcards

- Wildcards are special characters used in Linux commands to represent patterns of filenames or paths.
- Here are some common wildcards:
    - **``**: Represents zero or more characters in a filename or path.
    - **`?`**: Represents a single character in a filename or path.
    - **`[]`**: Represents a range of characters in a filename or path.
- Note that the forward slash (**`/`**) is not a wildcard character but is used as a directory separator in file paths.
- Wildcards can be used in various commands. For example:
    - **`rm abc*`**: Removes all files starting with "abc" in the current directory.
    - **`touch abc{1..10}xyz`**: Creates 10 files with names "abc1xyz" to "abc10xyz".
- For a more detailed explanation of wildcards, you can watch this video: **[Wildcards Explanation](https://youtu.be/z7ZAL0n64KU)**.

#FilePermission  

- File permissions determine the access rights for users (u), groups (g), and others (o) to read (r), write (w), and execute (x) a file.
    
- The permissions are represented by a 10-character string. The first character indicates the file type ('-' for regular file and 'd' for directory), followed by three sets of three characters each for user, group, and other permissions.
    
- To remove a permission, you can use the hyphen '-' character. For example:
    
    - **`u-r`**: Removes the read permission from the user.
    - **`g-w`**: Removes the write permission from the group.
    - **`o-x`**: Removes the execute permission from others.
- Here's an example of a file with permissions: (-rw-r-xr-x).
    
- The **`chmod`** command is used to change file permissions:
    
    - **`chmod u-w`**: Removes the write permission from the user.
    - **`chmod a-r`**: Removes the read permission from all (user, group, and others).
    
    **File Permissions by Numbers:**
    
    - File permissions can also be represented by numbers. Each digit corresponds to a specific set of permissions: owner, group, and others.
    - Here are some examples of file permissions represented by numbers:
        - 0: No permission (---)
        - 1: Execute permission (--x)
        - 2: Write permission (-w-)
        - 3: Write and execute permissions (-wx)
        - 4: Read permission (r--)
        - 5: Read and execute permissions (r-x)
        - 6: Read and write permissions (rw-)
        - 7: Read, write, and execute permissions (rwx)
    - To assign permissions using numbers, you can use the **`chmod`** command followed by the three-digit number representing the desired permissions. For example:
        - **`chmod 750 file`**: Assigns read, write, and execute permissions to the owner (7), read and execute permissions to the group (5), and no permissions to others (0) for the file.
        - **`chmod 644 file`**: Assigns read and write permissions to the owner (6), and read-only permissions to the group (4) and others (4) for the file.
    
    Remember, the first digit represents the owner's permissions, the second digit represents the group's permissions, and the third digit represents the permissions for others.

    - SUMMARY
    
    Here is a summary of various commands and operations in Linux:
    
    **File Operations:**
    
    1. **`ls`**: List files and directories.
    2. **`cd`**: Change directory.
    3. **`pwd`**: Print working directory.
    4. **`mkdir`**: Create a new directory.
    5. **`touch`**: Create an empty file.
    6. **`cp`**: Copy files or directories.
    7. **`mv`**: Move or rename files or directories.
    8. **`rm`**: Remove files or directories.
    9. **`cat`**: Display the contents of a file.
    10. **`grep`**: Search for a specific pattern in files.
    11. **`find`**: Search for files and directories.
    12. **`chmod`**: Change file permissions.
    13. **`chown`**: Change file ownership.
    14. **`chgrp`**: Change group ownership.
    
    **System Information:**
    
    - **`uname`**: Print system information.
    - **`top`** & **`htop`**: Display real-time system processes.
    - **`df`**: Display disk space usage.
    - **`free`**: Display memory usage.
    - **`du`**: Estimate file and directory sizes.
    - **`ps`**: Display running processes.
    - **`history`**: Show command history.
    - **`date`**: Display current date and time.
    - **`uptime`**: Show system uptime.
    - **`whoami`**: Display current user.
    
    **Text Processing:**
    
    - **`head`**: Display the beginning of a file.
    - **`tail`**: Display the end of a file.
    - **`sort`**: Sort lines of a file.
    - **`cut`**: Select columns or fields from a file.
    - **`sed`**: Stream editor for filtering and transforming text.
    - **`awk`**: Text processing language.
    - **`wc`**: Count lines, words, or characters.
    - **`tr`**: Translate or delete characters.
    - **`tee`**: Redirect output to a file and the screen.
    
    **Networking:**
    
    - **`ping`**: Send ICMP echo requests to a network host.
    - **`ifconfig`**: Configure network interfaces.
    - **`netstat`**: Network connection information.
    - **`ssh`**: Secure shell remote login.
    - **`scp`**: Securely copy files between hosts.
    - **`wget`**: Download files from the web.
    - **`curl`**: Transfer data from or to a server.
    -  **<span style="color:#DA1416; background-color:1. #238F3F">cd</span>**  change directory


# To Made Scripts 

![[Shell Scripting]]