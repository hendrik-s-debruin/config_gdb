# Prompts
set prompt \033[0;34m(gdb) \033[0m
python import sys
python sys.ps1 = "\033[0;34m>>> \033[0m"

# Do not automatically add breakpoints to multiple places when functions are
# overloaded. Instead, ask which instances to place the breakpoints
set multiple-symbols ask

# Clear the screen
define clc
	shell clear
end

document clc
clears the screen
end

define rebash
	source ~/.gdbinit
end

document rebash
Source the ~/.gdbinit file
end

# Don't step into installed 3rd-party library functions
skip -gfile /usr/include/*
skip -gfile /usr/include/*/*
skip -gfile /usr/include/*/*/*
skip -gfile /usr/include/*/*/*/*
skip -gfile /usr/include/*/*/*/*/*
skip -gfile /usr/include/*/*/*/*/*/*


source ~/.gdb/plugins/gdb-colour-filter/colour_filter.py

# Added by bin/eigengdb_register_printers on 2021-06-30T13:27:19.908269
python
__import__('eigengdb').register_eigen_printers(None)
end
