# Special Directories and Files

### Setuid

- Learned:
  - When the setuid permission is set on an executable binary file (a program) the binary file is run as the owner of the file, not as the user who executed it. This permission is set on a handful of system utilities so that they can be run by normal users, but executed with the permissions of root, providing access to system files that the normal user doesn't normally have access to.

  - `chmod u+s file` or `chmod 4775 file` - set special permission

  - `chmod u-s file` or `chmod 0775` - remove special permission

### Setgid

- Learned:
  - The setgid permission on a file is very similar to setuid; it allows a user to run an executable binary file in a manner that provides them additional (temporary) group access. The system allows the user running the command to effectively belong to the group that owns the file, but only in the setgid program.

  - `chmod g+s <file|directory>` or `chmod 2775 <file|directory>` setgrid permission to existing file permission
  
  - `chmod g-s <file|directory>` or `chmod 0775 <file|directory>` - remove the permission

### Sticky

- Learned:
  - The sticky bit permission is used to prevent other users from deleting files that they do not own in a shared directory. Recall that any user with write permission on a directory can create files in that directory, as well as delete any file in the directory, even if they do not own the file!
  
  - `chmod o+t <directory>` or `chmod 1775 <file|directory>`

  -`chmod o-t <directory>` or `chmod 0775 <directory>`


### Links
- Learned:
    - To understand hard links, it is helpful to understand a little bit about how the file system keeps track of files. For every file created, there is a block of data on the file system that stores the metadata of the file. Metadata includes information about the file like the permissions, ownership, and timestamps. Metadata does not include the file name or the contents of the file, but it does include just about all other information about the file.

    - This metadata is called the file's inode table. The inode table also includes pointers to the other blocks on the file system called data blocks where the data is stored.
    
    - `ln target link_name` -  The first argument is an existing file name to link to, called a target, and the second argument is the new file name to link to the target.

    - `ln -s target link_name` - A symbolic link, also called a soft link, is simply a file that points to another file. 

    - `find / -inum 278772 2> /dev/null`

    - `ln -s source softlink` - create softlink
    - `ls -li source softlink`