@echo off
setlocal
::enter point
::set title
title �r��j�M
::create dir if not exists
if not exist ".\�w�]�j�M�d��\" mkdir .\�w�]�j�M�d��
::greet
echo �w��ϥΦr��j�M
echo.
::prompt file path
echo �п�J���j�M��m(�Шϥ�\�����A����J�h�w�]��[�w�]�j�M�d��]��Ƨ�):
set /p "filepath="
if "%filepath%"=="" set filepath=�w�]�j�M�d��\
::prompt search string
:loop
echo �п�J���j�M�r��:
set /p "searchstr="
if "%searchstr%"=="" (
    echo �j�M�r�ꤣ�i����!
    goto loop
) else (
    goto next
)
:next
::findstr
echo.
echo �d�ߵ��G(�� %filepath% �j�M %searchstr%)�G
echo ----------
findstr /L /I /S /N "%searchstr%" %filepath%*.*
echo.
findstr /L /I /S /N "%searchstr%" %filepath%*.* > �j�M���G.txt
echo ����j�M���G�w�s��j�M���G.txt���A�{�������C
endlocal
pause
