@echo off
title Quiz Game
color 0A

echo Welcome to the Quiz Game!
echo Test your knowledge with these questions.
echo.

set /a score=0

:question1
echo Question 1: What is the capital of France?
echo 1. Berlin
echo 2. Madrid
echo 3. Paris
echo 4. Rome
set /p answer=Your answer: 
if "%answer%"=="3" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 3.
)
echo.

:question2
echo Question 2: Which planet is known as the Red Planet?
echo 1. Earth
echo 2. Mars
echo 3. Jupiter
echo 4. Saturn
set /p answer=Your answer: 
if "%answer%"=="2" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 2.
)
echo.

:question3
echo Question 3: What is the largest ocean on Earth?
echo 1. Atlantic Ocean
echo 2. Indian Ocean
echo 3. Arctic Ocean
echo 4. Pacific Ocean
set /p answer=Your answer: 
if "%answer%"=="4" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 4.
)
echo Ok you have solved the Easy Part, lets go to the hard part

:question4
echo Question 4: what is the rarest material on earth?
echo 1. Burman Jadeite
echo 2. Western Australian Red Diamond
echo 3. Kashmir Sapphire
echo 4. Astatine
set /p answer=Your answer: 
if "%answer%"=="4" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 4.
)

:question5
echo Question 5: what is a Kilonova?
echo 1. The moon landing
echo 2. Bright blast of electromagnetic radiation
echo 3. black hole
echo 4. None From the above
set /p answer=Your answer: 
if "%answer%"=="2" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 2.
)

:question6
echo Question 6: When did the Syrian Civil war began?
echo 1. March 15 2011
echo 2. December 29 1890
echo 3. January 16 1920
echo 4. February 19 2016
set /p answer=Your answer: 
if "%answer%"=="1" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 1.
)

:question7
echo Question 7: When did Ancient Russia Form?
echo 1. 3100 BCE
echo 2. Seventh and sixth centuries BC
echo 3. 13th and the 14th centuries
echo 4. 16 October 1853
set /p answer=Your answer: 
if "%answer%"=="2" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 2.
)

:question8
echo Question 8: When did The Ancient Egypt Form?
echo 1. 3100 BC
echo 2. Seventh and sixth centuries BC
echo 3. 13th and the 14th centuries
echo 4. 16 October 1853
set /p answer=Your answer: 
if "%answer%"=="1" (
    echo Correct!
    set /a score+=1
) else (
    echo Wrong! The correct answer is Answer 1.
)

:question9
echo Question 9: When and who it found The Mongol Empire ?
echo 1. 1863, By George Washington
echo 2. 1982, By Adolf Hitler
echo 3. 1206, By Genghis Khan
echo 4. 1267, By Adam
set /p answer=Your answer: 
if "%answer%"=="3" (
    echo Correct!
    set /a score+=2
) else (
    echo Wrong! The correct answer is Answer 3.
)








:result
echo Your score: %score% out of 10
if %score%==3 (
    echo Congratulations! You got all the answers right!
) else (
    echo Better luck next time!
)
echo.
pause
