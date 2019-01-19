@ECHO OFF
cd /d %tmp%
curl <https://example.hostedexample.com>/<url>/<file_your_downloading.exe> -o generic_installer.exe
START /W "Deploy" "%tmp%\generic_installer.exe"
del "%tmp%\generic_installer.exe" /f /q
