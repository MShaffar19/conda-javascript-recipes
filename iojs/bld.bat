mkdir %PREFIX%\Scripts
copy bin\npm.cmd %PREFIX%\Scripts
mkdir %PREFIX%\Scripts\node_modules
mkdir %PREFIX%\Scripts\node_modules\npm
xcopy /E * %PREFIX%\Scripts\node_modules\npm
python %RECIPE_DIR%\win_download.py
ECHO @"%~dp0\iojs.exe" %%* >> %PREFIX%\Scripts\node.cmd
if errorlevel 1 exit 1
