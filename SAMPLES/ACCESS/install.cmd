/*** install sample : WPS access agent ***/

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

installDir = directory();

MNREXXFILE = installDir || "\agent.mnx"
ICONFILE = installDir || "\agent.ico"
TITLE = 'WPS Agent'
LOCATION = '<WP_DESKTOP>'

setupString = 'ICONFILE=' || ICONFILE ';'
setupString = setupString || "OBJECTID=<MNREXXAGENT>;"
setupString = setupString || 'MNREXXFILE=' || MNREXXFILE ||';'

if SysCreateObject('MNRexx', TITLE, LOCATION, setupString) then
do
    say "installation successful"
end
else
do
    say "installation unsucessful"
end

