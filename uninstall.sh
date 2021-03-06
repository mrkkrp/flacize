### constants

I_ITEMS="/usr/{bin/flacize,share/man/man1/flacize.1.gz,share/licenses/flacize}"

### functions

bad_exit() # prints error message and exits the program
{
    echo "failed" 1>&2
    exit 1
}

### main

echo 'flacize uninstallation has been started;'

# 1. check if actual user is root (must be root to uninstall the software)

echo -n 'actual user must be root...'
test $(id -u) -gt 0 && bad_exit
echo 'ok'

# 2. removing files

echo 'deleting files...'
eval rm -vr $I_ITEMS
if test $? -eq 0
then echo 'deleting files: ok'
else bad_exit
fi

# 3. done

echo 'done.'
