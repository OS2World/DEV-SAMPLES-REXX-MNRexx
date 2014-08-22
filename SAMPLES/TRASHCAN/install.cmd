/*** install trashcan sample ***/

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

installDir = directory();

MNREXXFILE = installDir || "\trashcan.mnx"
ICONFILE = installDir || '\trashcan.ico'

setupString = "ICONFILE=" || ICONFILE || ";"
setupString = setupString || "MNREXXFILE=" || MNREXXFILE || ";"

if SysCreateObject('MNRexx', 'TrashCan', '<WP_DESKTOP>', setupString) then
do
    say "installation successful"
end
else
do
    say "installation unsuccessful"
end

