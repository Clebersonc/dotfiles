#!/bin/python
import subprocess as sp


song = sp.run(['playerctl', 'metadata', 'title'],
              stdout=sp.PIPE, universal_newlines=True, stderr=sp.STDOUT)
ispaused = sp.run(['playerctl', 'status'], stdout=sp.PIPE, stderr=sp.STDOUT,
                  universal_newlines=True)

if not song.stderr:
    if ispaused.stdout == "Paused\n":
        print("  Paused the song:  " + song.stdout)
    elif song.returncode == 0:
        print("  Now playing: " + song.stdout)
