# System and User Security

### Switching Users

- Learned:
  - `su -` - command opens a new shell as the root user.
  - `sudo` - command to execute a command as the root user, the command prompts for the user's own password, not that of the root user.
  - `getent passwd root` - command, another technique for retrieving user information contained in the /etc/passwd and /etc/shadow files is to use the getent command

### User Accounts

- Learned:
  - `/etc` - contain the account data of the users and groups defined on the system
  - `tail -5 /etc/passwd` - defines some of the account information for user accounts
  - `sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash`

### Passwords

- Learned:
  - `tail -5 /etc/shadow` contains account information related to the user's password.
  - `sysadmin:$6$c75ekQWF$.GpiZpFnIXLzkALjDpZXmjxZcIll14OvL2mFSIfnc1aU2cQ/221QL5AX5RjKXpXPJRQ0uVN35TY3/..c7v0.n0:16874:5:30:7:60:15050::`
  - `getent database sysadmin` - retrieve account information for the sysadmin

### System Accounts

- Learned:
  - `sshd:x:103:65534::/var/run/sshd:/usr/sbin/nologin`
  - UID 500+ (or 1000+) Regular users
  - UID 0 - Root
  - UID 1-499 - System accounts

### Group Account

- Learned:
  - Each user can be a member of one or more groups, which can also affect the level of access to the system.
  - `/etc/passwd or /etc/group`
  - `getent group mail` -view information about a specific group
  - `mail:x:12:mail,postfix`

### Viewing User Information

- Learned:
  - `id` - print user and group information for a specified user.
  - `uid=1001(sysadmin) gid=1001(sysadmin) groups=1001(sysadmin),4(adm),27(sudo)`
  - `cat /etc/group | grep sysadmin`

### Viewing Current Users

- Learned:
  - `who` - displays a list of users who are currently logged into the system.
  - `w` - provides a more detailed list about the users currently on the syste -`tty2 and pts/0` - If the terminal name starts with tty, then this is an indication of a local login, as this is a regular command line terminal. If the terminal name starts with pts, then this indicates the user is using a pseudo terminal or running a process that acts as a terminal.

### Viewing Login History

- Learned:
  - `last` - shows the username, terminal, and login location, not just of the current login sessions, but previous sessions as well.
  - `/var/log/wtmp` - displays all logins and reboot records by default.
