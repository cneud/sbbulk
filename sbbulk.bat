@ECHO OFF

ECHO. 
ECHO ######################################################
ECHO #  Bulk download script for SBB digital collections  #
ECHO #              (Version 0.1)                         #
ECHO ######################################################
ECHO.
 
REM Usage: run 'sbbulk.bat' from the Windows command line
REM 
REM Internally the script calls 'wget.exe <some_url>' where <some_url> is the URL of a TIFF image 
REM from the SBB digital collection, based on the following pattern:
REM 'https://content.staatsbibliothek-berlin.de/dc/<PPN>-<page_number>/full/full/0/default.tif'

ECHO.
CHOICE /C:TPJX /N /M "Select image file format: [T]IFF, [P]NG, [J]PEG or [X] to abort"
IF ERRORLEVEL 4 GOTO END
IF ERRORLEVEL 3 GOTO JPEG
IF ERRORLEVEL 2 GOTO PNG
IF ERRORLEVEL 1 GOTO TIFF
GOTO END

:JPEG
REM Create directory for downloads
MD downloads
REM Download TIFF images of pages 10-19 per PPN
ECHO.
ECHO Starting the download...time to grab a coffee!
ECHO.
REM Create a directory per PPN
FOR /f "delims=" %%G in (ppns.txt) DO (
	MD downloads\%%G
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.jpg -O ./downloads/%%G/%%G-0010.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.jpg -O ./downloads/%%G/%%G-0011.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.jpg -O ./downloads/%%G/%%G-0012.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.jpg -O ./downloads/%%G/%%G-0013.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.jpg -O ./downloads/%%G/%%G-0014.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.jpg -O ./downloads/%%G/%%G-0015.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.jpg -O ./downloads/%%G/%%G-0016.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.jpg -O ./downloads/%%G/%%G-0017.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.jpg -O ./downloads/%%G/%%G-0018.jpg
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.jpg -O ./downloads/%%G/%%G-0019.jpg
	PING 127.0.0.1 -n 6 > nul
)
ECHO.
ECHO The download has completed :-)
GOTO END

:PNG
REM Create directory for downloads
MD downloads
REM Download PNG images of pages 10-19 per PPN
ECHO.
ECHO Starting the download...time to grab a coffee!
ECHO.
FOR /f "delims=" %%G in (ppns.txt) DO (
	MD downloads\%%G
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.png -O ./downloads/%%G/%%G-0010.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.png -O ./downloads/%%G/%%G-0011.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.png -O ./downloads/%%G/%%G-0012.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.png -O ./downloads/%%G/%%G-0013.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.png -O ./downloads/%%G/%%G-0014.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.png -O ./downloads/%%G/%%G-0015.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.png -O ./downloads/%%G/%%G-0016.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.png -O ./downloads/%%G/%%G-0017.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.png -O ./downloads/%%G/%%G-0018.png
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.png -O ./downloads/%%G/%%G-0019.png
	PING 127.0.0.1 -n 6 > nul
)
ECHO.
ECHO The download has completed :-)
GOTO END

:TIFF
REM Create directory for downloads
MD downloads
REM Download JPEG images of pages 10-19 per PPN
ECHO.
ECHO Starting the download...time to grab a coffee!
ECHO.
FOR /f "delims=" %%G in (ppns.txt) DO (
	MD downloads\%%G
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.tif -O ./downloads/%%G/%%G-0010.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.tif -O ./downloads/%%G/%%G-0011.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.tif -O ./downloads/%%G/%%G-0012.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.tif -O ./downloads/%%G/%%G-0013.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.tif -O ./downloads/%%G/%%G-0014.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.tif -O ./downloads/%%G/%%G-0015.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.tif -O ./downloads/%%G/%%G-0016.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.tif -O ./downloads/%%G/%%G-0017.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.tif -O ./downloads/%%G/%%G-0018.tif
	wget.exe -q https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.tif -O ./downloads/%%G/%%G-0019.tif
	PING 127.0.0.1 -n 6 > nul
)
ECHO.
ECHO The download has completed :-)
GOTO END

:END