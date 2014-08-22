/*** install sample : object inspector ***/

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

installDir = directory();

MNREXXFILE = installDir || "\inspect.mnx"
ICONFILE = installDir || "\inspect.ico"
TITLE = 'Object Inspector'
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