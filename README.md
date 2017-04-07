# windexstarter
Script to start cygwin64 x server on windows startup. Because unix.

Make sure you have cygwin64, or change all instances of cygwin64 to cygwin32(whatever you have) in the script.

When running setup be sure to grab a desktop manager. If you are familiar with Desktop managers go ahead and grab whatever you need. It's easy to sort by category and download entire categories of managers, if you're into that sort of thing, or grab whatever you'd need to make you're own startx if you were on a distro like Arch.

If you're new to choosing your own  desktop manager, just grab the xfce category

https://cygwin.com/install.html

keep in mind pros you can totally compile your own shit like i3, though it may look dorky since this script doesn't run the -fullscreen tag when launching startxwin (couldn't get it working)

Next download and run the windexstarter, its a short batch file so skim over it to make sure it's not malicious.

If you know what you're doing you probably just saved like five minutes, if you don't and you grabbed xfce earlier I'll run you by starting a taskbar.

Basically, distros that use startx use a hidden file called .xinitrc in your ~/ to decide what to start when startx is executed.
Cygwin comes with a very special x server that allows Linux windows to use Windows windows. Windows. This program is called startxwin and uses ~/.startxwinrc

So startx and startxwin both come unpopulated. 
To start we should copy the system default with the command:

cp /etc/X11/xinit/startxwinrc ~/.startxwinrc

Now your .startxwinrc is populated with some default parameters and we can add the xfce taskbar, to this add the line"exec xfce4-panel" after the initial block of comments but before the defaults.


There you go, you can restart or execute the batch at %UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
 or type startxwin in a cygwin terminal, or even:

chdir C:\cygwin64\bin

bash -l -c startxwin

in a windows terminal, if you want.

Have fun and check out the Arch and Cygwin wikis for great information on desktop managers as well as reddit.com/r/unixporn to see what people are doing to their DEs on actual unix!
