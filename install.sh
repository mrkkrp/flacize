### constants

I_DIRS="/usr/share/licenses/flacize"

### functions

bad_exit() # prints error message and exits the program
{
    echo "failed" 1>&2
    exit 1
}

### main

echo 'flacize installation has been started;'

# 1. check if actual user is root (must be root to install the software)

echo -n 'actual user must be root...'
test $(id -u) -gt 0 && bad_exit
echo 'ok'

# 2. creating directories

echo 'creating directories...'
eval install -vdm755 $I_DIRS
if test $? -eq 0
then echo 'creating directories: ok'
else bad_exit
fi

# 3. copying new files

echo 'copying new files...'
install -vDm755 src/flacize      /usr/bin/
install -vDm644 LICENSE.md       /usr/share/licenses/flacize/
install -vDm644 doc/flacize.1.gz /usr/share/man/man1/
echo 'copying new files: ok'

# 4. done

echo 'done.'
