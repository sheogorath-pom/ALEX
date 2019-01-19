@ECHO OFF
#Change dirctory (and drive if neccessary) to the \tmp directory
cd /d %tmp%
#Downloads the executable.  Meant for .exe at the moment, plan to add option to grab the installer extension from the download soon.
curl <https://example.hostedexample.com>/<url>/<file_your_downloading.exe> -o generic_installer.exe
#Starts the installer with the title Deploy and then batch whats for it to finish before moving on to the next command
START /W "Deploy" "%tmp%\generic_installer.exe"
#Deletes the downloaded installer without any user interaction
del "%tmp%\generic_installer.exe" /f /q
