@echo off
title Youtube to MP3 batch.

:: Working on download ffmpeg.exe and youtube-dl.exe automatically if the files are not exist.

if exist "ffmpeg.exe" (
echo "FFMPEG module is ready!"
) else (
echo "FFMPEG module not exist! Please download it (ffmpeg.exe) and put in the folder."
pause
exit
)

if exist "youtube-dl.exe" (
echo "Youtube-DL module is ready!"
) else (
echo "Youtube-DL module not exist! Please download it (youtube-dl.exe) and put in the folder."
pause
exit
)


if exist "music.txt" (
echo "music.txt exist"
) else (
echo "Put url code here." > music.txt
echo "Please put one of more links on music.txt"
pause
exit
)

echo "Downloading the music now."
youtube-dl --extract-audio --audio-format mp3 --ignore-errors --download-archive downloaded.txt -o "/output/%%(title)s.%%(ext)s" -a music.txt 
pause
