#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Global ox:=""
Global oy:="" ;output x i y
Global x1:=0
Global x2:=1920
Global y1:=0
Global y2:=1080  ;wielkość ekrany


Click17(){

Coordmode, Pixel,Screen
Coordmode, Mouse,Screen

Sleep,1000

ImageSearch, ox, oy, x1, y1, x2, y2,*15 17.png
if ErrorLevel{
		ImageSearch, ox, oy, x1, y1, x2, y2,*15 172.png
		if ErrorLevel{
		Msgbox,problem 17
					 }
			}
		Click, %ox%, %oy%
}



ClickStart(){

Coordmode, Pixel,Screen
Coordmode, Mouse,Screen

ImageSearch, ox, oy, x1, y1, x2, y2,*15 6sanity.png
	if ErrorLevel{
		Msgbox,sorka start
			     }
	else{
		Click, %ox%, %oy%
		}
}

ClickMission(){

ImageSearch, ox, oy, x1, y1, x2, y2,*15 mission.png
	if ErrorLevel{
		Msgbox,sorka misja
			     }
	else{
		Click, %ox%, %oy%
		}
}


EndMissionCheck(){
Sleep,100000
Loop{
Sleep,5000
ImageSearch, ox, oy, x1, y1, x2, y2,*20 endmission.png
	if ErrorLevel{
		Msgbox,sorka koniec misja
			     }
	else{
	
	kurwax:=ox-150
	kurway:=oy-150
		Click, %kurwax%, %kurway%
		break
		}
}

}









Esc::
Pause
Suspend

return

^j::

Loop,3{
Click17()
Sleep,1700

ClickStart()
Sleep,1800

ClickMission()
Sleep,1300

EndMissionCheck() ;czeka na koniec misji
Sleep,6800
}

;sranie w banie


return