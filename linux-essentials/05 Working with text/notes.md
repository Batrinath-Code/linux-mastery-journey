# Working With Text

- Learned:
  - `cat` viewing samll files
  - `more, less` move around the document using keystroke
  - `head, tail` display only the first few line or last few lines
  - `nl` line numbering
  - `nl /etc/passwd | tail -n +30` 30 to the end of the file
    - `ls /etc | head` print first few lines
    - `ls /etc/ssh | nl` uising pipe output with line numbering
    - `ls /etc/ssh | nl | tail -n +10` it start from 10 line

### Input/Output Redirection

- Learned:
  - `echo "Line 1" > example.txt` - > output redirected to a file.
  - `echo /fake 2> error.txt` - 2> error message sent to file
  - `ls /fake /etc/ppp &> all.txt` - all output appears in the file
  - `tr 'a-z' 'A-Z < error.txt` - convert case of letters
  - `tr 'a-z' 'A-Z < error.txt > newerro.txt` - output to file
  - `sort /etc/password` - rearrange the lines of files either dictionary or numeric order
  - `sort -t: -n -r -k3 /etc/passwd` - rearrange the lines based third delimiter and -r for reverse order
  - `sort -t, -k2 -k1n -k3 ./fruits.csv` sort by fields

### Viewing File Stats

- Learned
  - `wc fruit.csv /etc/passwd` - print no of lines, no fo words, no of bytes and files
  - `ls /etc | wc -l` print total no of lines

### Filter File Sections

- Learned
  - `cut -d: -f1,5-7 /etc/passwd` print first,fifth,sixth and seventh fields from the file
  - `ls -l ~ | cut -c1-11,46-` extract column of text based upon character position and -c option for fixed-width outputs

### Filter File Contents

- Learned:
  - `grep bash /etc/passwd` - filter the lines
  - `grep --color bash /etc/passwd`
  - `grep -c bash /etc/passwd` - -c for count
  - `grep -n bash /etc/passwd` - n option for original line
  - `grep -w are sample.txt` - w option for return lines which contain matches

### Basic Regular Expressions

- Learned:
  - `grep 'r..t' /etc/passwd` - . would find any line that contained the letter
   - `grep '....' red.txt` - final all words that have at least four character
   - `grep '[0-9]' profile.txt` - return lines have a number in them
   - `grep '[^0-9]' profile.txt` - return which contain non-numbers.
   - `grep 're*d' red.txt` - match zero or more occurrences of letter e
   -  `grep '[oe]*' red.txt` - matche zero or more occureences of the o or e character
   - `grep 'ee*' red.txt` - atleast one e.
   - `grep '^root' /etc/passwd` - line should start with root
   - `grep 'r$' letters.txt` - line end with r
   - `grep 're*' ./sample.txt ` - word end with re or r
   - `grep 're\*' sample.txt` - word end with re* 
   - `grep -E 'e+' red.txt`
   - `grep -E 'colou?r' spelling.txt` - matches previous character or optional
   - `grep -E 'gray|grey' ./spelling.txt` - logical 'or' operator