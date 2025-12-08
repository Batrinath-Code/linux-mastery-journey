## 2025-12-08 — Basic Command Line Operations

### Files and Directories
- Learned:
  - `ls -l` – long listing format
  - `ls -l /home` – list contents of `/home` with details
  - `whoami` – display current user
  - `uname` – print system information
  - `uname -n` or `uname --nodename` – show hostname
  - `pwd` – print working directory

### Command History
- Learned:
  - `history` – show command history
  - `history 5` – show last 5 commands
  - `!9` – re-run command number 9 from history

### Shell Variables
- Learned:
  - `echo` – print variables or text
  - `which` – locate executable in `$PATH`
- Tried:
  - `echo $HISTSIZE`
  - `echo $PATH`
  - `which date`
- Understanding:  
  `which` only finds **executable files** that are in directories listed in the `$PATH` environment variable.

### Command Types
- Learned:
  - `type` – describe how a command would be interpreted
- Tried:
  - `type cd`
  - `type -a date`
  - `alias`
- Understanding:  
  The `type` command reveals whether a command is a **shell builtin**, **alias**, **function**, or **external executable**.

### Quoting
- Learned quoting mechanisms:
  - `'...'` – strong (literal) quoting; no expansion
  - `"..."` – weak quoting; allows variable/command substitution
  - `` `...` `` or `$(...)` – command substitution
- Tried:
  - `echo Today is \`date\`` → works (backticks)
  - `echo Today is $(date)` → preferred modern syntax
  - `'\`date\`'` → literal string (no substitution)
  - `\`date\`` → invalid syntax (escaped backticks lose meaning)
  - `"\`date\`"` → substitutes inside double quotes

### Control Operators
- Learned:
  - `;` – run commands sequentially (unconditional)
  - `&&` – run next only if previous **succeeds** (exit code 0)
  - `||` – run next only if previous **fails** (non-zero exit code)
- Tried:
  ```bash
  false; echo Not                 # "Not" prints (semicolon = always run next)
  echo Start && echo Done         # Both print (first succeeds)
  echo Success && false && echo Failed  # "Success" prints, "Failed" does not
  false || echo Fail              # "Fail" prints (because false fails)
  false || echo test && echo hi || false  # Prints "test" then "hi"
