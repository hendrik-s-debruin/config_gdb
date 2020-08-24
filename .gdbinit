set prompt \033[0;34m(gdb) \033[0m

# DO not automatically add breakpoints to multiple places when functions are
# overloaded. Instead, ask which instances to place the breakpoints
set multiple-symbols ask

source ~/.gdb/plugins/gdb-colour-filter/colour_filter.py
