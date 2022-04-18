@echo off
setlocal enabledelayedexpansion
color 0a
title Login Program

echo Logged time = %time% %date%>> log.txt

:1
echo Do you have internet connected to your computer now (y/n)
title Internet?
set /p Internet=

if %Internet% == y goto Music Set-Up
if %Internet% == n goto start1

:Music Set-Up
title Music- Set Up
echo Do you have apple music (y/n)
set /p applemusic=

if %applemusic% == y goto logged in?
if %applemusic% == n goto music

:logged in?
echo Are you logged in to apple music on Google on the device you are playing (y/n)
set /p yes or no=

if %yes or no% == y goto has apple music
if %yes or no% == n goto music

:has apple music
SET BROWSER=chrome.exe
SET WAIT_TIME=2
START %BROWSER% -new-tab "https://music.apple.com/library/albums/l.LjRRx72"
@ping 127.0.0.1 -n %WAIT_TIME% -w 1000 > nul
pause
pause >nul
goto start1


:music
SET BROWSER=chrome.exe
SET WAIT_TIME=2
START %BROWSER% -new-tab "https://www.youtube.com/watch?v=rY0WxgSXdEE"
@ping 127.0.0.1 -n %WAIT_TIME% -w 1000 > nul
echo Skip Ad and then Start Quiz. If you have Youtube Premium your fine.
pause

:start1
title Log-In Program
cls
color 0a
echo Log-In, Create a account system. 
echo Then you will be able to play the QUIZ
echo.
echo Input a number and press enter...
echo.
echo 1) Login
echo 2) Create New Account
set /p loginx1=">> "
if not %loginx1% leq 2 goto start1
if %loginx1% equ 1 goto login
echo What do you want your username to be?
set /p username1=">>> "
set v1f=0

:findspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" equ " " (
echo.
echo.
echo Sorry, no spaces allowed in your username...
pause >nul
goto start1
)
if NOT "!Letter%v1f%!" equ "" (
set /a v1f=%v1f%+1
goto findspaces
)
echo What do you want your password to be?
set /p password1=">>> "
goto save

:login
cls
set /p name1=Username:
if not exist "%name1%.bat" (
echo Invalid Username...
pause >nul
goto start1
)
set /p pass1=Password:
call %name1%.bat
if not %password1% equ %pass1% (
echo Invalid Password
pause >nul
goto start1
)
goto Logged In!

:save
(
echo set username1=%username1%
echo set password1=%password1%
)>%username1%.bat
goto start1

:Logged In!
echo You have successfully logged in. 
echo To go to the menu press any key
pause >nul
goto menu

@echo off
title QUIZ GAME!
color 0a

:menu
cls
color 0b
echo Welcome, to ......... THE MENU!
echo ------------------------------
pause
echo From here you can..........
echo ---------------------------
echo.
echo 1. Start
echo 2. Info
echo 3. Exit 
echo.
echo PLEASE NOTE: After you start a game you can always quit by typing quit in the round. 
echo.
echo.
echo GAME GLITCHES
echo ------------
echo.
echo About The Glitch -  Win If Quit
echo What if you"ll quit the game bymisstake you just wasted the time that you took to answer the questions. So i made a feature that if you remember you level number you can go back to it at any time even after you quit but im trusting that you all dont go to the 21st level even if you werent in that  level before and take the prize of winning.
echo.
echo About The Glitch - From 12 After Correct Answer Given You Won't Be Sent To Congratulations Screen But Straight To Question 13
echo I (GAME CREATOR) Tryed changing the code multiple times but nothing seems to work. After you type the correct answer in question 12 it will just go to the question 13 and not the congratulations screen. Although if you get it wrong it will go to the wrong screen so there's no glitch there. If this glitch is fixed it will be removed from the Game Glitches Section and will be announced in the New Updates System that the glitch is fixed
echo.
echo There may be more glitches in game after updates if doing any. Requst you to co-operate with any future glitches.
echo.
echo.
set /p menuchoice=

if %menuchoice% == 1 goto startgame
if %menuchoice% == 2 goto info
if %menuchoice% == 3 exit
goto menu

:info
cls
title Information on the quiz!
color 0b
pause
echo This quiz is highly awesome! Please use at your own risk! to...
echo Continue using this game...
echo NOTE: I am not responsible for any damage done to your brain! :)
pause
cls
goto menu

:quit
cls
title Quit
echo.Quit
echo ---
echo.
echo You have quit successfully.
echo If you didnt mean to quit. Its ok just type the level number that you left bymisstake
echo.
echo Example
echo -------
echo I was in level 1 and quit bysmisstake so i will type 1

set /p Go back to level if quit bymisstake=

if %Go back to level if quit bymisstake% == 1 goto q1
if %Go back to level if quit bymisstake% == 2 goto q2
if %Go back to level if quit bymisstake% == 3 goto q3
if %Go back to level if quit bymisstake% == 4 goto q4
if %Go back to level if quit bymisstake% == 5 goto q5
if %Go back to level if quit bymisstake% == 6 goto q6
if %Go back to level if quit bymisstake% == 7 goto q7
if %Go back to level if quit bymisstake% == 8 goto q8
if %Go back to level if quit bymisstake% == 9 goto q9
if %Go back to level if quit bymisstake% == 10 goto q10
if %Go back to level if quit bymisstake% == 11 goto q11
if %Go back to level if quit bymisstake% == 12 goto q12
if %Go back to level if quit bymisstake% == 13 goto q13
if %Go back to level if quit bymisstake% == 14 goto q14
if %Go back to level if quit bymisstake% == 15 goto q15
if %Go back to level if quit bymisstake% == 16 goto q16
if %Go back to level if quit bymisstake% == 17 goto q17
if %Go back to level if quit bymisstake% == 18 goto q18
if %Go back to level if quit bymisstake% == 19 goto q19
if %Go back to level if quit bymisstake% == 20 goto q20
if %Go back to level if quit bymisstake% == 21 goto q21
if %Go back to level if quit bymisstake% == 22 goto q22
if %Go back to level if quit bymisstake% == 23 goto q23
if %Go back to level if quit bymisstake% == 24 goto q24
if %Go back to level if quit bymisstake% == 25 goto q25
if %Go back to level if quit bymisstake% == 26 goto q26
if %Go back to level if quit bymisstake% == 27 goto q27
if %Go back to level if quit bymisstake% == 28 goto q28
if %Go back to level if quit bymisstake% == 29 goto q29
if %Go back to level if quit bymisstake% == 30 goto q30

:startgame
cls
color 0a
type quiz.txt
title Prepare... To start the QUIZ!
echo.
echo. Press any key to start, THE QUIZ!
pause >nul
goto q1

:q1 
cls
color 0b
title Question 1!


cls
echo Question 1
echo ----------
echo.
echo Who owns the company "Microsoft
echo.
echo A) Steve Jobs
echo B) Me
echo C) Bill Gates
echo D) A random guy in the dustbin!
echo.
set /p ans1=

if %ans1% == a goto wr1
if %ans1% == b goto wr1
if %ans1% == c goto cr1
if %ans1% == d goto wr1
if %ans1% == quit goto quit
goto q1

:wr1
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo ------------------------------------------------
echo.
echo Press any key to try the question again.
pause >nul
goto q1

:cr1
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 1
echo.
echo Press any key to continue
pause >nul
goto q2

:q2
cls
title Question 2!
cls
echo Question 2
echo ----------
echo.
echo What relation is Phineas to Ferb in the cartoon Phineas and Ferb?
echo.
echo A) Step-brother
echo B) Best Friend
echo C) Cousin
echo D) Nephew
echo.
set /p ans2=

if %ans2% == a goto cr2
if %ans2% == b goto wr2
if %ans2% == c goto wr2
if %ans2% == d goto wr2
if %ans2% == quit goto quit
goto q2

:wr2
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo ------------------------------------------------
echo.
echo Press any key to try the question again.
pause >nul
goto q2

:cr2
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 2
echo.
echo Press any key to continue
pause >nul
goto q3

:q3
cls
title Question 3!
cls
echo Question 3
echo ----------
echo.What does "perro" mean in English?
echo.
echo A) Cat
echo B) Cheese
echo C) Dog
echo D) Rat
echo.
set /p ans3=

if %ans3% == a goto wr3
if %ans3% == b goto wr3
if %ans3% == c goto cr3
if %ans3% == d goto wr3
if %ans3% == quit goto quit
goto q3

:wr3
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo ------------------------------------------------
echo.
echo Press any key to try the question again.
pause >nul
goto q3

:cr3
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 3
echo.
echo Press any key to continue
pause >nul
goto q4


:q4
cls
title Question 4!
cls
echo Question 4
echo ----------
echo.Can pigs fly?
echo.
echo A) Yes
echo b) No
echo C) Sometimes
echo D) Only on Wednesdays... :S
echo.
set /p ans4=

if %ans4% == a goto wr4
if %ans4% == b goto cr4
if %ans4% == c goto wr4
if %ans4% == d goto wr4
if %ans4% == quit goto quit
goto q4


:wr4
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try the question again.
pause >nul
goto q4

:cr4
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 4
echo.
echo Press any key to continue
pause >nul
goto q5

:q5
cls
title Question 5!
cls
echo Question 5
echo ----------
echo.Which of these is the best home-remedy to reduce the appearance of acne scars?
echo.
echo A) Baking soda
echo b) Turmeric
echo C) Yogurt
echo D) Vinegar
echo.
set /p ans5=

if %ans5% == a goto wr5
if %ans5% == b goto wr5
if %ans5% == c goto cr5
if %ans5% == d goto wr5
if %ans5% == quit goto quit
goto q5


:wr5
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try the question again.
pause >nul
goto q5

:cr5
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 5
echo.
echo Press any key to continue
pause >nul
goto q6

:q6
cls
title Question 6!
cls
echo Question 6
echo ----------
echo.Which country invented tea?
echo.
echo A) India
echo B) Dubai
echo C) Italy
echo D) China
echo.
set /p ans6=

if %ans6% == a goto wr6
if %ans6% == b goto wr6
if %ans6% == c goto wr6
if %ans6% == d goto cr6
if %ans6% == quit goto quit
goto q6

:wr6
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try the question again
pause >nul
goto q6

:cr6
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 6
echo.
echo Press any key to continue
pause >nul
goto q7
 
:q7
cls
title Question 7!
cls
echo Question 7
echo ----------
echo. What is the capital of New Zealand?
echo.
echo A) Auckland
echo B) Wellington
echo C) A man
echo D) 1
echo.
set /p ans7=

if %ans7% == a goto wr7
if %ans7% == b goto cr7
if %ans7% == c goto wr7
if %ans7% == d goto wr7
if %ans7% == quit goto quit
goto q7

:wr7
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try the question again.
pause >nul
goto q7

:cr7
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 7
echo.
echo Press any key to continue
pause >nul
goto q8

:q8
cls
title Question 8!
cls
echo Question 8
echo ----------
echo. What is the smallest country in the world?
echo.
echo A) Vatican City
echo B) Dubai
echo C) Italy
echo D) Rome
echo.
set /p ans8=

if %ans8% == a goto cr8
if %ans8% == b goto wr8
if %ans8% == c goto wr8
if %ans8% == d goto wr8
if %ans8% == quit goto quit
goto q8

:wr8
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q8

:cr8
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 8
echo.
echo Press any key to continue
pause >nul
goto q9

:q9
cls
title Question !
cls
echo Question 9
echo ----------
echo. Do cats turn green?
echo.
echo A) Yes
echo B) No
echo C) Only on Tuesdays 
echo D) Only on Wednesdays 
echo.
set /p ans9=

if %ans9% == a goto wr9
if %ans9% == b goto cr9
if %ans9% == c goto wr9
if %ans9% == d goto wr9
if %ans1% == quit goto quit
goto q9

:wr9
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again.
pause >nul
goto q9

:cr9
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 9
echo.
echo Press any key to continue
pause >nul
goto q10

:q10
cls
title Question 10!
cls
echo Question 10
echo ----------
echo. Which city in India would you find the Taj Mahal in?
echo.
echo A) Mumbai
echo B) Bangalore
echo C) Agra
echo D) Chennai
echo.
set /p ans10=

if %ans10% == a goto wr10
if %ans10% == b goto wr10
if %ans10% == c goto cr10
if %ans10% == d goto wr10
if %ans10% == quit goto quit
goto q10

:wr10
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again.
pause >nul
goto q10

:cr10
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 10
echo.
echo Press any key to continue
pause >nul
goto q11

:q11
cls
title Question 11!
cls
echo Question 11
echo ----------
echo. In 2009 Indian Premier League who got the title of Player of the series?
echo.
echo A) Shane Watson
echo B) Sachin Tendulkar
echo C) Robin Uthappa
echo D) Adam Gilchrist
echo.
set /p ans11=

if %ans11% == a goto wr11
if %ans11% == b goto wr11
if %ans11% == c goto wr11
if %ans11% == d goto cr11
if %ans11% == quit goto quit
goto q11

:wr11
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q11

:cr11
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 11
echo.
echo Press any key to continue
pause >nul
goto q12

:q12
cls
title Question 12!
cls
echo Question 12
echo ----------
echo. What character, youtube channel is this?
type sponge.txt
echo.
echo A)DanTDM
echo B)Squidward
echo C)SpongeBob Square Pants
echo D)Thinknoodles
echo.
set /p ans12=

if %ans12% == a goto wr12
if %ans12% == b goto wr12
if %ans12% == c goto cr12
if %ans12% == d goto wr12
if %ans12% == quit goto quit
goto q12

:wr12
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q12

:cr12
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 12
echo.
echo Press any key to continue


:q13
cls
title Question 13!
cls
echo Question 13
echo ----------
echo. What character, youtube channel is this?
type squidward.txt
echo.
echo A)SpongeBob Square Pants
echo B)Squidward
echo C)DanTDM
echo D)Thinknoodles
echo.
set /p ans13=

if %ans13% == a goto wr13
if %ans13% == b goto cr13
if %ans13% == c goto wr13
if %ans13% == d goto wr13
if %ans13% == quit goto quit
goto q13

:wr13
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q13


:cr13
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 13
echo.
echo Press any key to continue
goto q14

:q14
cls
title Question 14!
cls
echo Question 14
echo ----------
echo. What does "nino" mean in English?
echo.
echo A) Girl
echo B) Alien
echo C) Man
echo D) Boy
echo.
set /p ans14=

if %ans14% == a goto wr14
if %ans14% == b goto wr14
if %ans14% == c goto wr14
if %ans14% == d goto cr14
if %ans14% == quit goto quit
goto q14

:wr14
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q14

:cr14
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 14
echo.
echo Press any key to continue
pause >nul
goto q15


:q15
cls
title Question 15!
cls
echo Question 15
echo ----------
echo.  Google Chrome, Safari, Firefox and Explorer are different types of what?
echo.
echo A) Web Browsers
echo B) Emails
echo C) Boys's Names
echo D) Girls's Names
echo.
set /p ans15=

if %ans15% == a goto cr15
if %ans15% == b goto wr15
if %ans15% == c goto wr15
if %ans15% == d goto wr15
if %ans15% == quit goto quit
goto q15


:wr15
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q15

:cr15
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 15
echo.
echo Press any key to continue
pause >nul
goto q16

:q16
cls
title Question 16!
cls
echo Question 16
echo ----------
echo.  Which email service is owned by Microsoft?
echo.
echo A) Gmail
echo B) Yahoo
echo C) Hotmail
echo D) Rediffmail
echo.
set /p ans16=

if %ans16% == a goto wr16
if %ans16% == b goto wr16
if %ans16% == c goto cr16
if %ans16% == d goto wr16
if %ans16% == quit goto quit
goto q16

:wr16
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q16

:cr16
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 16
echo.
echo Press any key to continue
pause >nul
goto q17

:q17
cls
title Question 17!
cls
echo Question 17
echo ----------
echo. What is the symbol for potassium?
echo.
echo A) U
echo B) Kr
echo C) P
echo D) K
echo.
set /p ans17=

if %ans17% == a goto wr17
if %ans17% == b goto wr17
if %ans17% == c goto wr17
if %ans17% == d goto cr17
if %ans17% == quit goto quit
goto q17


:wr17
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q17

:cr17
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 17
echo.
echo Press any key to continue
pause >nul
goto q18

:q18
cls
title Question 18!
cls
echo Question 18
echo ----------
echo.What year was the very first model of the iPhone released?
echo.
echo A)2003
echo B)2007
echo C)2006
echo D)2009
echo.
set /p ans18=

if %ans18% == a goto wr18
if %ans18% == b goto cr18
if %ans18% == c goto wr18
if %ans18% == d goto wr18
if %ans18% == quit goto quit
goto q18


:wr18
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q18

:cr18
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 18
echo.
echo Press any key to continue
pause >nul
goto q19

:q19
cls
title Question 19!
cls
echo Question 19
echo ----------
echo. What does the H in HTTP stand for?
echo.
echo A)Helix
echo B)HTML
echo C)Hypertext 
echo D)Hyper 
echo.
set /p ans19=

if %ans19% == a goto wr19
if %ans19% == b goto wr19
if %ans19% == c goto wr19
if %ans19% == d goto cr19
if %ans19% == quit goto quit
goto q19


:wr19
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to return to the menu
pause >nul
goto q19

:cr19
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 19
echo.
echo Press any key to continue
pause >nul
goto q20

:q20
cls
title Question 20!
cls
echo Question 20
echo -----------
echo.How many hearts does an octopus have?
echo.
echo A)Three
echo B)Five
echo C)Ten
echo D)Fifteen
echo.
set /p ans20=

if %ans20% == a goto cr20
if %ans20% == b goto wr20
if %ans20% == c goto wr20
if %ans20% == d goto wr20
if %ans20% == quit goto quit
goto q20


:wr20
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key try this question again 
pause >nul
goto q20

:cr20
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 20
echo.
echo Press any key to continue
pause >nul
goto q21


:q21
cls
title Question 21!
cls
echo Question 21
echo -----------
echo.What device is used to measure angles?
echo.
echo A)Colours
echo B)Scale
echo C)Pen
echo D)A protractor
echo.
set /p ans21=

if %ans21% == a goto wr21
if %ans21% == b goto wr21
if %ans21% == c goto wr21
if %ans21% == d goto cr21
if %ans21% == quit goto quit
goto q21

:wr21
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q21

:cr21
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 21
echo.
echo Press any key to continue
pause >nul
goto q22

:q22
cls
title Question 22!
cls
echo Question 22
echo -----------
echo.How long have snakes been roaming Earth?
echo.
echo A)3 million years
echo B)130 million years
echo C)30 million years
echo D)10 million years
echo.
set /p ans22=

if %ans22% == a goto wr22
if %ans22% == b goto cr22
if %ans22% == c goto wr22
if %ans22% == d goto wr22
if %ans22% == quit goto quit
goto q22


:wr22
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q22

:cr22
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 22
echo.
echo Press any key to continue
pause >nul
goto q23

:q23
cls
title Question 23!
cls
echo Question 23
echo -----------
echo.What color do about 75 percent of national flags contain?
echo.
echo A)Blue
echo B)Yellow
echo C)Green
echo D)Red
echo.
set /p ans23=

if %ans23% == a goto wr23
if %ans23% == b goto wr23
if %ans23% == c goto wr23
if %ans23% == d goto cr23
if %ans23% == quit goto quit
goto q23


:wr23
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q23

:cr23
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 23
echo.
echo Press any key to continue
pause >nul
goto q24

:q24
cls
title Question 24!
cls
echo Question 24
echo -----------
echo.Who won the European Golden Shoe award for the 2016/2017 season? (Testing your Football Knowledge)
echo.
echo A)Cristiano Ronaldo
echo B)Lionel Messi
echo C)Eusebio
echo D)Gerd Muller
echo.
set /p ans24=

if %ans24% == a goto wr24
if %ans24% == b goto cr24
if %ans24% == c goto wr24
if %ans24% == d goto wr24
if %ans24% == quit goto quit
goto q24


:wr24
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q24

:cr24
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 24
echo.
echo Press any key to continue
pause >nul
goto q25


:q25
cls
title Question 25!
cls
echo Question 25
echo -----------
echo.Who drew the below picture and in which app did he/she draw it in? (Picture opened in a new Photos tab)
Untitled.png
echo (Picture opened in a new Photos tab)
echo.
echo A)Kendall Pinto (Drew it in Paint 3D)
echo B)Lionel Messi (Drew in Paint)
echo C)Game Creator (Drew it in Paint 3D)
echo D)Game Creator (Drew it in Sketchbook app)
echo.
set /p ans25=

if %ans25% == a goto cr25
if %ans25% == b goto wr25
if %ans25% == c goto cr25
if %ans25% == d goto wr25
if %ans25% == quit goto quit
goto q25


:wr25
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q25

:cr25
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 25
echo.
echo Press any key to continue
pause >nul
goto q26

:q26
cls
title Question 26!
cls
echo Question 26
echo -----------
echo.In what year was the first ever Wimbledon Championship held?
echo.
echo A)1877
echo B)2000
echo C)1977
echo D)2009
echo.
set /p ans26=

if %ans26% == a goto cr26
if %ans26% == b goto wr26
if %ans26% == c goto cr26
if %ans26% == d goto wr26
if %ans26% == quit goto quit
goto q25


:wr26
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q26

:cr26
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 26
echo.
echo Press any key to continue
pause >nul
goto q27

:q27
cls
title Question 27!
cls
echo Question 27
echo -----------
echo.What is the name of this song?
echo.
start 1.mp3
echo A)We can do it
echo B)I can't do it
echo C)I can do it
echo D)We will do it
echo.
set /p ans27=

if %ans27% == a goto wr27
if %ans27% == b goto wr27
if %ans27% == c goto cr27
if %ans27% == d goto wr27
if %ans27% == quit goto quit
goto q27


:wr27
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q27

:cr27
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 27
echo.
echo Press any key to continue
pause >nul
goto q28

:q28
cls
title Question 28!
cls
echo Question 28
echo -----------
echo.What is India's population as of the year 2018?
echo.
echo A)900 crores
echo B)50 crores
echo C)100.1 crores
echo D)135.26 crores
echo.
set /p ans28=

if %ans28% == a goto wr28
if %ans28% == b goto wr28
if %ans28% == c goto wr28
if %ans28% == d goto cr28
if %ans28% == quit goto quit
goto q28


:wr28
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q28

:cr28
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 28
echo.
echo Press any key to continue
pause >nul
goto q29

:q29
cls
title Question 29!
cls
echo Question 29
echo -----------
echo.What goes up but never ever comes down?
echo.
echo A)Fan
echo B)Your age
echo C)God
echo D)A cat
echo.
set /p ans29=

if %ans29% == a goto wr29
if %ans29% == b goto cr29
if %ans29% == c goto wr29
if %ans29% == d goto wr29
if %ans29% == quit goto quit
goto q29

:wr29
cls
title You LOSE! Ha Ha! >:D
echo Sorry, %username1%... But you lost :(
echo You can try this level again by pressing any key
echo -----------------------------------------------
echo.
echo Press any key to try this question again
pause >nul
goto q29

:cr29
cls
title YOU ARE CORRECT :3
echo Congratz! You got this question , correct! Well done %username1%
echo Your score is 29
echo.
echo Press any key to continue
pause >nul
goto q30

:q30
cls
title Question 30!- Maker of the Game wants to know from you
cls
echo Question 30!- Maker of the Game wants to know from you
echo ------------------------------------------------------
echo.Do you play Minecraft?
echo.
echo A)Yes
echo B)No
echo C)Sometimes
echo D)No, I hate that game
echo.
set /p ans30=

if %ans30% == a goto Great you play Minecraft dude
if %ans30% == b goto Bad you dont play
if %ans30% == c goto You should play it more often 
if %ans30% == d goto Very Bad
if %ans30% == quit goto quit
goto q30

:Great you play Minecraft dude
cls
title Great You Play Minecraft
echo Great You Play Minecraft
echo.------------------------
echo.
echo Press any key to get finish the game and win
pause >nul
goto win

:Bad you dont play
cls
title Why dont you play bro?
echo Why dont you play %username1%
echo Please buy that game now. If you are poor i'll give it to you for free.
echo 1) Go to TLancher (Website)
echo 2) Make a account
echo 3) Download Minecraft
echo Done
echo.
echo Press any key to complete the game
pause >nul
goto win

:You should play it more often
cls
title Play it more often %username1%
echo  Play it more often %username1%
echo.----------------------------
echo.
echo Press any key to get finish the game and win
pause >nul
goto win

:Very Bad
cls
title Very bad %username1%
echo Very bad %username1%
echo Please buy the game. If you can't here you go
echo 1) Go to TLancher (Website)
echo 2) Make a account
echo 3) Download Minecraft
echo Done
echo.
echo Press any key to complete the game
pause >nul
goto win

:win
cls
color 0e
title Congrats, %username1%! You have won! 
echo.
echo Here, take this virtual cookie as gift for completion of..
echo THE MOST AMAZING QUIZ IN THE WOOOOOORLD! :D
cookie.png
echo your cookie opened in photos. If you didnt see it. 
echo.BTW - Do you want to share your 1 cookie with someone? Cause sharing is caring
echo Type y if you want to share or type n if you dont want to share

set /p yeahyeahyeah=

if %yeahyeahyeah% == y goto oh yeah
if %yeahyeahyeah% == n goto ABCD

:ABCD
cls  
echo You didn't you share.If you shared you would've got more cookies
echo Very Sad - Maybe Next Time
echo. Press any key to continue
pause >nul
goto step

:oh yeah
cls
echo Sharing is caring so here you go more cookies for you
cookies.png
echo Press any key to go to next step
pause >nul
goto step

:step
echo.
Pause
cls
echo Return to menu? (y/n) 
set /p rtrn2menu=

if %rtrn2menu% == y echo.Do you want to listen to music or no? (y/n) - Please note- If you want music you will have to log-in again.
if %rtrn2menu% == n exit
set /p Yes= 

if %Yes% == y goto music 
if %yes% == n goto menu



:crash
cls
title GAME CRASHED!
echo WARNING: The game has crashed or is not running coorectly!
echo.
echo After pressing any key the game should terminate
echo Floor Gang - poopiepie
pause >nul
exit






















