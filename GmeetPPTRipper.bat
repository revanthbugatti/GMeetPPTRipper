@Echo off
set "PNGSlidesdir=%CD%"
for %%f in (*.mp4) do (
  If not Exist "%PNGSlidesdir%\%%~nf" MkDir "%PNGSlidesdir%\%%~nf"
  .\ffmpeg -i "%%f" -vf "crop=960:544:0:88,scdet=s=1:t=2.5, scale=1280:720" -vsync vfr "%PNGSlidesdir%\%%~nf\%%~nf_%%d.png"
)