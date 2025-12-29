# Navigating the Filesystem

### Files and Directories
- Learned:
    - `pwd` print current working dir
    - `echo $HOME` Home Variable print home dir
    - `cd /` change directory
    - `cd /home` Absolute paths 
    - `cd ~` tilde ~ character refer home path
    - `echo ~ ~root ~mail ~nobody` tilde as part of the path
    - `cd ~root` it require permission to execute
    - `cd ..` relative path .. represents one level above current dir
    - `cd ../dict` relative path to change up one level from the current dir

### Listing Files and Directories
- Learned:
    -`cd` change dir
    - `ls` list contents of the dir
        - black or white or regular file
        - blue Directory
        - cyan symbolic link file
        - green executable file
    - `ls -a` list all files including hidden files
        - . single dot represent current dir
        - .. it mean directory above the current dir
    - `ls -l` more information about a file
        - first character - mean plain file and d for directory
        - drwxr-xr-x - mean permission
        - 1 reperesent hard link
        - root it mean user owner of the file
        - root the group owner of the file
        - 140 the size of the file in bytes
        - oct 15 00:25 date and time when the file was last modified
    - `ls -R ./Documents/` it list content current and it subdirectories
    - `ls -d /etc/s*` display only the files that begin with s in the /etc directory and -d option prevent subdirectories 
    - `ls -d /etc/????` the ? character can be used to match 1 character in a file name
    - `ls -d /etc/[abc]*` display all of the file in the /etc dir that begin with the letter a, b or c
