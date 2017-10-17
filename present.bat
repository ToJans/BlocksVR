@echo off
echo Starting webserver
git checkout master
call "cmd /c start npm start"
echo Press Enter when the server has started
pause
echo.
echo Starting replay of commits, press enter to go to the next commit
echo.
FOR /L %%A IN (21,-1,0) DO (
  ECHO Check out step %%A
  git reset --hard HEAD
  git checkout threejs~%%A
  pause
)

git checkout master