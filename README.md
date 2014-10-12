Package to automatically hard-logout users in lab situations.

Computers can be set using the builtin tools to automatically logout users
after a predetermined amount of time. However, it will wait, and ultimately
fail, if a user has unsaved changes in an Office document, etc.

I tried numerous ways of doing this-the first idea was to ```killall -9
loginwindow```, but, that frequently left users with a glitched out loginwindow
(Go figure...)

So I eventually decided to just reboot the computer. Of course, this requires
a change to the sudoers file, which is why there is a postflight script.

If the computer has a power schedule, and the machine is past the scheduled shutdown time, it will just shut down instead of reboot.

You can change the interval after which the LaunchAgent runs. Just edit the ```StartInterval``` value in the org.da.autoLogout.plist file.

This is meant to be built with The Luggage, but can certainly be built in other
ways.