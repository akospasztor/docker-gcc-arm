#!/bin/sh

# This tiny script verifies that the installed GCC version is correct by
# comparing the installed GCC version to the version passed via an
# environmental variable.
# The script exits with 0 (OK) if the installed GCC version is correct and
# exits with 1 (error) if either the environmental variable is not set or the
# installed version does not match the value of the environmental variable.

[[ -z $GCC_VERSION ]] && exit 1

if arm-none-eabi-gcc --version | grep "$GCC_VERSION"
then
    exit 0
else
    exit 1
fi
