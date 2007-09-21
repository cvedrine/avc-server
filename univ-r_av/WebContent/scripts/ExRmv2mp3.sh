#!/bin/bash
# Script qui cr�� des podcasts MP3 de fichiers RM
# Prend en argument le r�pertoire et le nom du fichier � cr�er

cd $1
# Enregistrement interm�diaire en avi
/usr/bin/mencoder $2.rm -quiet -oac pcm -ovc frameno -o $2.avi
# Transformation du fichier avi en mp3
/usr/bin/ffmpeg -i $2.avi -vn -ar 48000 -ac 1 -ab 64 -f mp3 $2.mp3
rm $2.avi
