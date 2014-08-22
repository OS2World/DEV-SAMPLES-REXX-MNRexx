/*** MNRexx installation script ***/

parse arg dllDirectory;

if dllDirectory = "" then
do
    dllDirectory = "C:\os2\dll"
end

say "installing to" dllDirectory

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

'@copy MNRexx.dll' dllDirectory

if rc \= 0 then
do
    say "cannot copy MNRexx.dll to" dllDirectory
    say "please make sure the directory exists and your harddrive has enough space"
    exit
end

if SysRegisterObjectClass("MNRexx", "MNRexx") then
do
    say "MNRexx installation successful"
end
else
do
    say "cannot register MNRexx class"
    say "please make sure the directory" dllDirectory "is in your LIBPATH"
    say "and your harddisk has enough free space"
end

exit
