/*** install sample : black hole ***/

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

installDir = directory();

MNREXXFILE = installDir || "\blakhole.mnx"
ICONFILE = installDir || "\blakhole.ico"
TITLE = 'Black Hole'
LOCATION = '<WP_DESKTOP>'

setupString = 'ICONFILE=' || ICONFILE ';'
setupString = setupString || 'MNREXXFILE=' || MNREXXFILE ||';'

if SysCreateObject('MNRexx', TITLE, LOCATION, setupString) then
do
    say "installation successful"
end
else
do
    say "installation unsuccessful"
end

