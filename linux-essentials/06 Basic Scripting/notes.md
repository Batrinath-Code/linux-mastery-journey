# Basic Scripting

- Learned:
    - `#!` - shebang  
    - `ANIMAL` - variable
    - `echo -n` - without new line
    -  `read NAME` - accept string 
    - `$1` - accept argument
    - `#` - comment
    - `exit 1` - exit code with error
    - `exit 0` - mean everything is ok

### Conditionals
- Learned:
    - `test` command
    - `test -f ./notes.md && echo "File exists" || echo "File does not exist"` - f for file exists
    - `test ! -f ./notes.md` - ! -f file not exist
    - `test -d /tmp` - d directory exists
    -  `test -x "$(which ls)"` - substitute the location of ls then test if user can execute
    - `test 1 -eq 1 ` - eq  for numeric comparison
    - `test ! 1 -eq 1 ` - not equal for numeric comparison
    - `test “a” = “a”` - comparison for string
    - `test 1 –eq 1 –o 2 –eq 2` - OR 
    - `test 1 –eq 1 –a 2 –eq 2` - AND

