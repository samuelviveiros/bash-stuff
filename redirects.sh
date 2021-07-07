#!/usr/bin/env bash

echo "This will be written to standard output"

echo "This will be written to standard error" 1>&2
echo "And this will be written to standard error as well" >&2
>&2 echo "Also this will be written to standard error"


# NOW, RUN THIS SCRIPT AS FOLLOWS:

# The following will redirect stdout to a text file:
# $ ./redirects.sh 1> stdout.txt
# Or:
# $ ./redirects.sh > stdout.txt

# The following will redirect stderr to a text file:
# $ ./redirects.sh 2> stderr.txt

# The following will redirect both stdout and stderr to a text file:
# $ ./redirects.sh &> stdout-n-stderr.txt

exit 0
