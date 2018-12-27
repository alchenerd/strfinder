@echo off
setlocal
::enter point
::set title
title 字串搜尋
::create dir if not exists
if not exist ".\預設搜尋範圍\" mkdir .\預設搜尋範圍
::greet
echo 歡迎使用字串搜尋
echo.
::prompt file path
echo 請輸入欲搜尋位置(請使用\結尾，不輸入則預設為[預設搜尋範圍]資料夾):
set /p "filepath="
if "%filepath%"=="" set filepath=預設搜尋範圍\
::prompt search string
:loop
echo 請輸入欲搜尋字串:
set /p "searchstr="
if "%searchstr%"=="" (
    echo 搜尋字串不可為空!
    goto loop
) else (
    goto next
)
:next
::findstr
echo.
echo 查詢結果(於 %filepath% 搜尋 %searchstr%)：
echo ----------
findstr /L /I /S /N "%searchstr%" %filepath%*.*
echo.
findstr /L /I /S /N "%searchstr%" %filepath%*.* > 搜尋結果.txt
echo 完整搜尋結果已存於搜尋結果.txt內，程式結束。
endlocal
pause
