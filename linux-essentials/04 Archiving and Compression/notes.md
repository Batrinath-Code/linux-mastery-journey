# Archiving and Compression

### Files and Directories

- Learned:
  - `tar, gzip, bzip2, xz, zip` compression and archiving tools
  - `tar` stand for Tape ARchive
  - `tar -cvf mybackup.tar ./mybackup` create and archive
  - `tar -tvf mybackup.tar` display the content of a tar file
  - `tar -zcvf mybackup.tar.gz ./mybackup` gzip compression.
  - `tar -xvf mybackup.tar.gz ` Extract the content of an archive.
  - `tar -rvf mybackup.tar ./mybackup.tar.gz ` add a file to an existing archive
  - `gzip notes.md` compress the file
  - `gunzip notes.md.gz` uncompress the file
  - `bzip2/bunzip2` used to compress and uncompress
  - `xz/unxz` same as previous
  - `zip mybackup.zip mybackup` compress in zip format
  - `zip -r ` perform recursion into subdir
  - `unzip -l mybackup.zip` to view the content
  - `unzip mybackup.zip` extract content

### Copying, Moving and Renaming Files and Directories

-Learned: - `cp /etc/hosts hosts` cp used to copy files
