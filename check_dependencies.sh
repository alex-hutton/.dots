#!/bin/sh
# Check that executables exist on path

for dep in "$@"
do
	command -v "$dep" >/dev/null 2>&1 || \
	{ printf "Could not find '$dep' in path. Try installing it.\n\n" >&2; \
	  exit 1; \
		}
done
