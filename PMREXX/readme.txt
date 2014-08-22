This is a slightly modified version of PMREXX.  The differences are:

    - '/e' option to toggle 'process ended' message box
    - no file checking
    - compiled as a system executable (no C runtime)

The default doesn't show the 'process ended' message box.  Also, at default,
the program exits as soon as the rexx script ends.

To make it work like the original pmrexx, use '/e' option.

To install,

    - copy pmrexx.exe to a directory in your PATH that comes before C:\os2
    (or backup the original pmrexx.exe and copy this version to C:\os2)

    - copy pmrexxio.dll to a directoy in your LIBPATH that comes before
    C:\os2\dll (or copy this to C:\os2\dll)

    - copy pmrexx.hlp to a directoy in your HELP path that comes before
    C:\os2\help (or backup the original pmrexx.hlp and copy this version
    to C:\os2\help)

The original code is taken from the developers toolkit 2.1.  The only
modified files are PMREXX.C and PMREXX.MAK (included).

