/*** access WPS agent ***/

call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs

MNREXXAGENT = '<MNREXXAGENT>'
MNREXXQUEUE = RxQueue('Create', 'test')

/*** create Rexx queue for communication ***/

currentQueue = RxQueue('Set', MNREXXQUEUE)

/*** queue the commands to be executed ***/

queue "desktop = RxmnQueryObject('<WP_DESKTOP>')"
queue "rc = RxmnGetContents(desktop, 'content')"
queue "do i = 1 to content.0"
queue "queue RxmnGetTitle(content.i)"
queue "end"

/*** notify the agent to execute the command ***/

setupString = 'MNREXXQUEUE=' || MNREXXQUEUE || ';'

rc = SysSetObjectData(MNREXXAGENT, setupString)

/*** pull the results ***/

do while queued() \= 0
   pull x
   say x
end /* do */

rc = RxQueue('Set', currentQueue)
rc = RxQueue('Delete', MNREXXQUEUE)

