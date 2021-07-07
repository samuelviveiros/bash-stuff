#!/usr/bin/env bash

# There can be no spaces around the equals symbol.
# As in Python, use underscores to separate words, all lowercase.
this_is_a_global_var=42

# As for "constants", capitalize them all.
THIS_IS_A_CONSTANT=66

# Use the dollar sign to refer to a variable.
echo "this_is_a_global_var: $this_is_a_global_var"
echo "THIS_IS_A_CONSTANT: $THIS_IS_A_CONSTANT"

function my_humble_func() {
    # Use the 'local' command to declare and initialize local variables.
    local this_is_a_local_var=4266
    local this_is_another_local_var=4626

    echo "this_is_a_local_var: $this_is_a_local_var"
    echo "this_is_another_local_var: $this_is_another_local_var"

    # Global variables are visible inside functions.
    echo "this_is_a_global_var: $this_is_a_global_var"

    # We can declare globals inside functions as well.
    this_is_another_global_var=6642
}

# Global variables declared inside a function will only be visible after calling that function.
echo "this_is_another_global_var: $this_is_another_global_var"

# Calling our humble function.
my_humble_func

echo "this_is_another_global_var: $this_is_another_global_var"

# Local variables are not visible outside functions.
echo "this_is_a_local_var: $this_is_a_local_var"

# Exit with success.
exit 0
