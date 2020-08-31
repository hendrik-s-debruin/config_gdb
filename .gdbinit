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

source ~/.gdb/plugins/gdb-colour-filter/colour_filter.py
