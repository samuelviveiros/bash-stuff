#!/usr/bin/env bash

fn1() {
    echo "This function IS NOT using the 'function' keyword."
}

function fn2() {
    echo "This function in turn IS using 'function' keyword."
}

fn1
fn2

function arg_test() {
    # The variable $# is the one that stores the argument count.
    echo "argc: $#"

    if [ $# -gt 0 ]; then
        echo "\$1: $1"
    fi

    # We can only return integer values.
    # Probably because a function is suppose to behave like a program,
    # always returning an integer value that indicates success or failure.
    return 123  # or: return "123"
}

# Calling arg_test without passing any parameters.
arg_test

# Calling arg_test this time passing some parameters.
arg_test foo bar answer 42 order 66

# The variable $? in turn stores the function's return.
echo "return: $?"

function show_ports() {
    echo "FTP: $1, SSH: $2"
}

function get_ftp_port() {
    echo "Here goes some output from get_ftp_port"
    return 21
}

function get_ssh_port() {
    echo "Here goes some output from get_ssh_port"
    return 22
}

# In order to pass the return values from functions to a function,
# we have to save the return values in temporary variables.
get_ftp_port
p1=$?
get_ssh_port
p2=$?
show_ports $p1 $p2

# This one won't work.
show_ports get_ftp_port get_ssh_port

# Neither this one. Actually, this will pass the function's output instead.
show_ports $(get_ftp_port) $(get_ssh_port)

# Just out of curiosity: The echo command always
# concatenates its parameters into a single string.
echo just a "  dumb" text

temp=$(get_ftp_port 2>&1)
echo $temp

# Exit with success.
exit 0
