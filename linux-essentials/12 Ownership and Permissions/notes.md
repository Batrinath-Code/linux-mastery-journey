# Ownership and Permissions

### File Ownership

- Learned:
  - `id` - display UID AND GID and group names of all group memberships.
  - `ls -la` - multiple pieces of information
  - `-rw-rw-r--. 1 sysadmin sysadmin 0 Oct 21 10:18 /tmp/filetest1`

### Changing Groups

- Learned:
  - `groups` - print all group
  - `sysadmin adm sudo research development `
  - `id` - output UID, GID and groups -`uid=1001(sysadmin) gid=1001(sysadmin) groups=1001(sysadmin),4(adm),27(sudo),1005(research),1006(development)`
  - `newgrp research` - change your current primary at a time with this method if exit change to default primary group.
  - `uid=1001(sysadmin) gid=1005(research) groups=1005(research),4(adm),27(sudo),1001(sysadmin),1006(development)`
  - `chgrp research sample` - change the group owner of any file to any group.
  - `chgrp -R development test_dir` - change the group ownership of the test_dir directory and all files and subdirectories of the test_dir directory.

### Changing User Ownership

- Learned:
  - `chown bob /tmp/testfile1` - change the user owner of a file, even to give the ownership of one of their own files to another user.
  - `chown bob:users /tmp/testfile2` - to change both the user and the group.
  - `chown .users /tmp/filetest1` - only to change the group ownership of the file use a colon or a period as a prefix to the group name

### Permission

- Learned:
  - `s -l /etc/passwd`
  - `-rw-r--r-- 1 root root 4135 May 27 21:08 /etc/passwd`

### Change Permission

- Learned:
  - `chmod g+w abc.txt` - gives the group owner write permission on a file.
  - `chmod ug+x,o-r` - Adds the executes permission to the user owner and group owner and removes the read permission for others.
  - `chmod u=rx abc.txt` - gives the user owner only read and execute permissions,removing the write permission.
  - `chmod 754 abc.txt` - set the permission of a file to be rwxr-xr--
  - `umask` - command is a feature that is used to determine default permissions that are set when a file or directory is created.
