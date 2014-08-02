cd source
for %%f in (*.mp4) do (
	ffmpeg -i "%%f" -c:v libx264 -b:v 1500k -s 1280x800 -crf 22 -g 1 -keyint_min 1 -preset slow "../converted/c_%%f"
)

cd intro_outro
for %%f in (*.mp4) do (
	ffmpeg -i "%%f" -c:v libx264 -b:v 1500k -s 1280x800 -crf 22 -g 1 -keyint_min 1 -preset slow "../../converted/intro_outro/c_%%f"
)

pause
 