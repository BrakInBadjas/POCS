@echo off
echo Trying to upgrade pip/wheel/setuptools if update is available
pip install --upgrade pip wheel setuptools

echo.
echo Installing pyserial
pip install pyserial

echo.
echo If you get the error: 'Module winrandom not found'
echo Go to file: (...\Lib\site-packages\Crypto\Random\OSRNG\nt.py) Inside your python folder
echo Change: "import winrandom"
echo to: "from . import winrandom" 
echo Then restart this bat file

echo.
echo Installing PyMySQL
pip install pymysql

echo.
echo Installing Dependencies for Kivy
pip install docutils pygments pypiwin32 kivy.deps.sdl2 kivy.deps.glew

echo.
echo Installing Kivy
pip install kivy

echo.
echo.
echo Launching GUI
python Python/dbGui.py

PAUSE