@ECHO OFF

ECHO: 
ECHO ######################################################
ECHO #                                                    #
ECHO #  Bulk download script for SBB digital collections  #
ECHO #              (Version 0.2.1)                       #
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
IF ERRORLEVEL 3 SET EXT=jpg & GOTO WGET
IF ERRORLEVEL 2 SET EXT=png & GOTO WGET
IF ERRORLEVEL 1 SET EXT=tif & GOTO WGET

:WGET
MD downloads
ECHO:
ECHO Starting the download...time to grab a coffee!
ECHO:
FOR /f "delims=" %%G in (%1) DO (
	MD downloads\%%G
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0010/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0010.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0011/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0011.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0012/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0012.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0013/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0013.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0014/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0014.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0015/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0015.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0016/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0016.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0017/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0017.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0018/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0018.%EXT%
	wget.exe --quiet --wait=5 --limit-rate=500K --show-progress https://content.staatsbibliothek-berlin.de/dc/%%G-0019/full/full/0/default.%EXT% -O ./downloads/%%G/%%G-0019.%EXT%
)
ECHO:
ECHO The download has completed :-)
GOTO END

:END