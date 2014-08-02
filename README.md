ffmpeg_convert_concat_batch
===========================

This is a proof of concept on how to use FFMPEG to prepend intro and append outros to a bunch of videos.
The batch files are made for Windows only.

Requirements
------------

1. Get ffmpeg from http://ffmpeg.zeranoe.com/builds/ .
2. set the environmental variables to point to ffmpeg's bin e.g: C:\ffmpeg\bin if you have it installed there.

Instructions
------------

- <b>reset.bat</b> deletes all the converted, conatenated video files and concat lists.
- <b>convert.bat</b> converts source videos into the same consistent format which makes concat simpler.
- <b>concat.bat</b> for each content video, it prepends the intro and appends the outro.

1. run convert.bat (./convert.bat)
2. then run concat.bat (./concat.bat)
3. (optional) reset.bat to start all over again.

convert.bat;concat.bat to run two commands on one line

Output
------

The concatenated videos will be in converted\concatenated.