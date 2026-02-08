# Users and Groups

### Groups

- Learned:
  - `grep root /etc/group` - Viewing the group configuration information
  - `getent group root` - view Local and network based groups
  - `groupadd -g 1005 research`- create a new group
  - `groupadd development` - without -g option
  - `groupadd -r sales` - assigns the new group a GID that is less than the lowest standard GID
  - `getent group sales`
  - `groupmod -n clerk sales` - command can be used to either change the name of a group with the -n option or change the GID for the group with the -g option.
  - `groupmod -g 10003 clerks` -these files will be owned by a GID only
  - `find / -nogroup` - These files with no group name are called orphaned files.

### Users

- Learned:
  - `useradd -D` - command allows you to view or change some of the default values
  - `useradd -D -f 30` - f you wanted to allow users to have expired passwords that they could still log in with for up to thirty days
  - `grep -Ev '^#|^$' /etc/login.defs` - file also contains values that are applied by default to new users you create with the useradd command.
    - `useradd -u 1000 jane` - Create a user with a specific UID
    - `useradd -g users jane` - add user to specify a primary group
    - `useradd -G sales,reasearch jane` - add user to Supplementary Group
    - `useradd -m jane` - If the CREATE_HOME setting in the /etc/login.defs file is set to yes, the home directory is created automatically. Otherwise, the -m option can be used to make the home directory.
    - `useradd -mb /test jane`- specify a different base directory under which the user's home directory is created.
    - `useradd -md /test/jane jane`- option allows you to specify either an existing directory or a new home directory to create for the user.
    - `useradd -mk /home/sysadmin jane` - By default, the contents of the /etc/skel directory are copied into the new user's home directory. The resulting files are also owned by the new user.
    - `useradd -s /bin/bash jane` - it can also be overridden 
    - `useradd -c 'Jane Doe' jane` - The comment field, originally called the General Electric Comprehensive Operating System (GECOS) field
    - `useradd -u 1009 -g users -G sales,research -m -c 'Jane Doe' jane `

### Password
- Learned:
    - `passwd jane` - set the initial password or change the password for the account
    - `chage -M 60 jane` - managing the password aging
    - `grep jane /etc/shadow | cut -d: -f1,5`

### Modifying a User
- Learned:
    - `usermod -aG development jane` - add new group

### Deleting a User
- Learned:
    - `userdel jane` - without deleting the user's home directory
    - `userdel -r jane` - delete the user home dir and mail spool as well  