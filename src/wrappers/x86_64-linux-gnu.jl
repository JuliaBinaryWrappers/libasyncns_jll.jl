# Autogenerated wrapper script for libasyncns_jll for x86_64-linux-gnu
export libasyncns

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libasyncns`
const libasyncns_splitpath = ["lib", "libasyncns.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libasyncns_path = ""

# libasyncns-specific global declaration
# This will be filled out by __init__()
libasyncns_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libasyncns = "libasyncns.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libasyncns")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libasyncns_path = normpath(joinpath(artifact_dir, libasyncns_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libasyncns_handle = dlopen(libasyncns_path)
    push!(LIBPATH_list, dirname(libasyncns_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

