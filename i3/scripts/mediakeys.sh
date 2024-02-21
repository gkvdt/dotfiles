#!/bin/bash

case $1 in 
	'play')
		dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play
		playerctl play
		;;
	'pause')
		idbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause
		playerctl pause
		;;
	'toggle')
		dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
		;;
	'previous')
		playerctl previous
		;;
	'next')
		playerctl next
		;;
esac
