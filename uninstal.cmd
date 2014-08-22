/*** uninstall MNRexx ***/

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

if SysDeregisterObjectClass("MNRexx") then
do
    say "MNRexx object is successfully deregisterd."
    say "Please shutdown and reboot now."
    say "After reboot, delete the MNRexx.dll file in your installation directory."
end
else
do
    say "MNRexx cannot be deregistered."
    say "Please make sure there is no instance of MNRexx."
end

