cd converted
for %%f in (*.mp4) do (
	echo.>%%f.list
	echo file 'intro_outro/c_intro.mp4' >> %%f.list
	echo file '%%f' >> %%f.list
	echo file 'intro_outro/c_outro.mp4' >> %%f.list
)


for %%f in (*.list) do (
	ffmpeg -f concat -i %%f -c copy concatenated/%%f.mp4
)