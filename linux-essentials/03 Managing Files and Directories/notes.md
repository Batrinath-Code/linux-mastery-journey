# Managing Files and Directories

### Files and Directories
- Learned:
    - `echo *` print current dir
    - `echo D*` print match all filename start with D
    - `echo s*` print print all file and dir end with s
    - `echo P*t*` print it contian P and t in all files
    - `echo ????` print exactly four characters long
    - `echo D??????` print start with D and are exactly nine characters long
    - `echo ?????*s` print end with s and are exactly nine characters long
    - `echo [DP]*` print D or P the first character files
    - `echo [!DP]*` print all expect D Or P the first character files
    - `echo [D-P]*`
    - `echo [!D-P]*`

### Copying, Moving and Renaming Files and Directories
-Learned:
    - `cp /etc/hosts hosts` cp used to copy files
    - `rm hosts` rm used to remove files
    - `cp -v /etc/hosts hosts` print information
    - `cp -v /etc/hosts .` dot refer copy to current dir
    - `cp -p /etc/hosts .` it preserved that date and permission modes
    - `cp -R /etc/udev Myetc ` Copy all content udev 
    - `ls -lR Myetc` list all the contents of the directory with both the long and recursive options.
    - `rm -r Myetc` remove dir and their contents recursively
    - `touch premove` use create files
    - `mv premove postmove` cuts and pastes file premove to postmove 