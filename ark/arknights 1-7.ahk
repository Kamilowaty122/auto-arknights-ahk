;0.1 - initial release
;0.2 - dodana losowość do klików i czasów czekania (czekanie jest kompletnie z dupy xd)
;
;
;
;
;
;
;


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include images



Global ox:=""
Global oy:="" ;output x i y
Global x1:=0
Global x2:=1920
Global y1:=0
Global y2:=1080  ;wielkość ekranu
Global random:=0

Coordmode, Pixel,Screen
Coordmode, Mouse,Screen

Click17(){

Coordmode, Pixel,Screen
Coordmode, Mouse,Screen

Sleep,1000

ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/17.png
if ErrorLevel{
		ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/172.png
		if ErrorLevel{
		Msgbox,problem 17
					 }
			}
			Random, random,0,20
			kurwax:=ox+random
			Random, random,0,20	;randomizajca od chuja
			kurway:=oy+random
		Click, %kurwax%, %kurway%
}

ClickStart(){

ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/start.png
	if ErrorLevel{
		Msgbox,no start
			     }
	else{
		Random, random,-50,60
			kurwax:=ox+random
		Random, random,-5,30
			kurway:=oy+random
		Click, %kurwax%, %kurway%
		}
}


ClickMission(){

ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/mission.png
	if ErrorLevel{
		Msgbox,no mission
			     }
	else{
		Random, random,-5,80
			kurwax:=ox+random
		Random, random,-90,110	
			kurway:=oy+random
		Click, %kurwax%, %kurway%
		}
}


EndMissionCheck(){

Sleep,80000
Loop{
Sleep,5000
ImageSearch, ox, oy, x1, y1, x2, y2,*20 images/endmission.png
	if ErrorLevel{
		;Msgbox,sorka koniec misja
			     }
	else{
	
		Random, random,-250,600
			kurwax:=ox+random
		Random, random,-500,-60
			kurway:=oy+random
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


; Click17()
; Sleep,1700
Loop,3{
ClickStart()
Random, random,1800,4900
Sleep,%random%

ClickMission()
Random, random,1400,3100
Sleep,%random%

EndMissionCheck() ;czeka na koniec misji
Random, random,6800,10000
Sleep,%random%
}
return

; debug shit

; ^k::

; Random, random,0,1000

; Sleep,%random%
; Msgbox,elo
; return