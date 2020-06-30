include("module_simple.jl")
include("abs_simple.jl")
include("db_input.jl")
#include("ui.jl")

using .sqrt_custom:super_sqrt,super_add
using .add_custom
using Gtk

#sqrt(-1)
super_sqrt(-1)
super_add(10,12)
#add_custom.s_add(10,12)


#show_ui()
