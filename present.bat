@echo off
echo Starting webserver
call "cmd /c start python -m http.server"
echo Starting web browser
call "cmd /c start http://localhost:8000/index.html"

echo Starting replay of commits, press enter to go to the next commit
echo.
FOR /L %%A IN (21,-1,0) DO (
  ECHO Check out step %%A
  git reset --hard HEAD
  git checkout threejs~%%A
  pause
)