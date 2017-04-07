@echo on
@echo @echo off>%UserProfile%\cygwin.bat
@echo chdir C:\cygwin64\bin>>%UserProfile%\cygwin.bat
@echo bash -l -c "~/startxwin.bash">>%UserProfile%\cygwin.bat
@echo pause>>cygwin.bat
move /-y "%UserProfile%\cygwin.bat" "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\cygwin.bat"
C:
chdir C:\cygwin64\bin
bash -l -c "echo -e '#!/bin/bash\nstartxwin'>startxwin.bash"
pause