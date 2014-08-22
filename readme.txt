
MNRexx version 1.0

Copyright (c) 1994 Makoto Nagata, all rights reserved.

MNRexx is a WPS class that gives you access to WPS objects in Rexx language.
With MNRexx, you can create specialized WPS objects in Rexx.  Also an MNRexx
object on the desktop can act as an agent to allow access to WPS objects from
outside of the WPS process.

MNRexx has a general SOM interface with which you can directly call any SOM
method in Rexx (including undocumented WPS methods).

This package (MNRexx10.zip) is released as shareware so that I can find out
how many people are out there who care about this kind of product.  For more
information, please view the MNRexx.inf file.  The registration fee is USD
$15.00 (which I hope you will find reasonable).

This package expires on 10/10/94.  If you have received this package after
this date, please contact the author.

This package contains the following files:

    readme                          - this file
    install.cmd                     - installation script
    uninstal.cmd                    - uninstallation script
    register.frm                    - registration form text file
    MNRexx.dll                      - WPS class dll
    MNRexx.inf                      - MNRexx reference in INF format
    PMREXX                          - a version of PMREXX
    PMREXX\readme                   - description
    PMREXX\PMREXX.C                 - modified C source file
    PMREXX\PMREXX.EXE               - modified PMREXX executable
    PMREXX\PMREXX.MAK               - modified PMREXX makefile
    PMREXX\PMREXXIO.DLL             - dll for PMREXX
    PMREXX\PMREXXIO.HLP             - help file for PMREXX
    samples\access                  - WPS access from an external script
    samples\access\readme           - description
    samples\access\install.cmd      - installation script
    samples\access\access.cmd       - external script
    samples\access\agent.mnx        - MNRexx script
    samples\blakhole                - simple 'blackhole' object
    samples\blakhole\readme         - description
    samples\blakhole\install.cmd    - installation script
    samples\blakhole\blakhole.mnx   - MNRexx script
    samples\blakhole\blakhole.ico   - icon file
    samples\inspect                 - object inspector
    samples\inspect\readme          - description
    samples\inspect\install.cmd     - installation script
    samples\inspect\inspect.mnx     - MNRexx script
    samples\inspect\inspect.ico     - icon file
    samples\trashcan                - simple 'trashcan' object
    samples\trashcan\readme         - description
    samples\trashcan\install.cmd    - installation script
    samples\trashcan\trashcan.mnx   - MNRexx script
    samples\trashcan\trashcan.ico   - icon file

This software is freely distributable as long as the original package
(MNRexx10.zip) is unmodified.  For more information, please view the
information file MNRexx.inf.

1.  Installation

    To install MNRexx, run 'install.cmd' command file.

    - to install to "C:\OS2\DLL" directory, type "install".
    - to install to some other directory in your LIBPATH (e.g., D:\DLL)
    type "install [your dll directory]" (e.g., "install D:\DLL").

2.  Documentation

    View the information file by typing 'view MNRexx.inf'.

3.  The Author

    Makoto Nagata
    
    P.O.Box 26228
    San Francisco, CA 94126-6228

    internet: MNAGATA@CRL.COM

