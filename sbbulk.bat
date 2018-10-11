@ECHO OFF

ECHO: 
ECHO ######################################################
ECHO #                                                    #
ECHO #  Bulk download script for SBB digital collections  #
ECHO #              (Version 0.2)                         #
ECHO #                                                    #
ECHO ######################################################
ECHO:

IF [%1] == [] (
	ECHO Usage:
	ECHO:
	ECHO  Run 'sbbulk.bat ^{ppn.txt^}' from the Windows command 
	ECHO  line where ^{ppn.txt^} is a plain text file containing
	ECHO  one PPN per line
	GOTO END
) ELSE (GOTO START)

:START
ECHO:
CHOICE /C:TPJX /N /M "Select image file format: [T]IFF, [P]NG, [J]PEG or [X] to abort"
IF ERRORLEVEL 4 GOTO END
IF ERRORLEVEL 3 GOTO JPEG
IF ERRORLEVEL 2 GOTO PNG
IF ERRORLEVEL 1 GOTO TIFF
GOTO END

:JPEG
MD downloads
ECHO:
ECHO Starting the download...time to grab a coffee!
ECHO:
FOR /f "delims=" %%G in (%1) DO (
	MD downloads\%%G
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.jpg -O ./downloads/%%G/%%G-0010.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.jpg -O ./downloads/%%G/%%G-0011.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.jpg -O ./downloads/%%G/%%G-0012.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.jpg -O ./downloads/%%G/%%G-0013.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.jpg -O ./downloads/%%G/%%G-0014.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.jpg -O ./downloads/%%G/%%G-0015.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.jpg -O ./downloads/%%G/%%G-0016.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.jpg -O ./downloads/%%G/%%G-0017.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.jpg -O ./downloads/%%G/%%G-0018.jpg
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.jpg -O ./downloads/%%G/%%G-0019.jpg
)
ECHO:
ECHO The download has completed :-)
GOTO END

:PNG
MD downloads
ECHO:
ECHO Starting the download...time to grab a coffee!
ECHO:
FOR /f "delims=" %%G in (%1) DO (
	MD downloads\%%G
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.png -O ./downloads/%%G/%%G-0010.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.png -O ./downloads/%%G/%%G-0011.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.png -O ./downloads/%%G/%%G-0012.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.png -O ./downloads/%%G/%%G-0013.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.png -O ./downloads/%%G/%%G-0014.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.png -O ./downloads/%%G/%%G-0015.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.png -O ./downloads/%%G/%%G-0016.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.png -O ./downloads/%%G/%%G-0017.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.png -O ./downloads/%%G/%%G-0018.png
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.png -O ./downloads/%%G/%%G-0019.png
)
ECHO:
ECHO The download has completed :-)
GOTO END

:TIFF
MD downloads
ECHO:
ECHO Starting the download...time to grab a coffee!
ECHO:
FOR /f "delims=" %%G in (%1) DO (
	MD downloads\%%G
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.tif -O ./downloads/%%G/%%G-0010.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.tif -O ./downloads/%%G/%%G-0011.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.tif -O ./downloads/%%G/%%G-0012.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.tif -O ./downloads/%%G/%%G-0013.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.tif -O ./downloads/%%G/%%G-0014.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.tif -O ./downloads/%%G/%%G-0015.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.tif -O ./downloads/%%G/%%G-0016.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.tif -O ./downloads/%%G/%%G-0017.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.tif -O ./downloads/%%G/%%G-0018.tif
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.tif -O ./downloads/%%G/%%G-0019.tif
)
ECHO:
ECHO The download has completed :-)
GOTO END

:END