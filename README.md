# Ft_printf

The versatility of the printf function in C represents a great exercise in programming for
us. This project is of moderate difficulty. It will enable you to discover variadic functions
in C. The key to a successful ft_printf is a well-structured and good extensible code.

## Mandatory part

The prototype of ft_printf should be int ft_printf(const char *, ...);

- You have to recode the libc’s **printf** function
- It must not do the buffer management like the real printf
- It will manage the following conversions: **cspdiuxX%**
- It will manage any combination of the following flags: ’-0.*’ and *minimum field
width* with all conversions
- It will be compared with the real **printf**
- You must use the command **ar** to create your librairy, using the command libtool
is forbidden.
