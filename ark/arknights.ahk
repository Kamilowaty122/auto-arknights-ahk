;0.1 - initial release
;0.2 - dodana losowość do klików i czasów czekania (czekanie jest kompletnie z dupy xd)
;
;
;
;
;-------------
;instrukcja
; 1. do glownego menu(home) [screen]
; 2. wejdz to combat
; [3.] nacisnij na mape co chcesz farmic [na razie tylko lul]
; 4. odpal skrypt
;-------------




#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include images


Global loop:=5
Global ox:=""
Global oy:="" ;output x i y
Global x1:=0
Global x2:=1920
Global y1:=0
Global y2:=1080  ;wielkość ekranu
Global random:=0

Coordmode, Pixel,Screen
Coordmode, Mouse,Screen




ClickMap(){




}



ClickStart(){

ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/start.png
	if ErrorLevel{
		;Msgbox,,,no start,1
			     }
	else{
		Random, random,-50,60
			kurwax:=ox+random
		Random, random,-5,30
			kurway:=oy+random
		Click, %kurwax%, %kurway%
		
		Random, random,1800,4900
		Sleep,%random%
		}
}


ClickMission(){

ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/mission.png
	if ErrorLevel{
		;Msgbox,,,no mission,1
			     }
	else{
		Random, random,-5,80
			kurwax:=ox+random
		Random, random,-90,110	
			kurway:=oy+random
		Click, %kurwax%, %kurway%
		
		Random, random,1400,3100
		Sleep,%random%
		}
}


EndMissionCheck(){

;Sleep,80000
;Loop{
;Sleep,5000
ImageSearch, ox, oy, x1, y1, x2, y2,*20 images/endmission.png
	if ErrorLevel{
		;Msgbox,,,sorka koniec misja,1
			     }
	else{
	
		Random, random,-250,600
			kurwax:=ox+random
		Random, random,-500,-60
			kurway:=oy+random
		Click, %kurwax%, %kurway%
		
		Random, random,6800,10000
		Sleep,%random%
		;break
		}
;}
}


SanityShit(){

ImageSearch, ox, oy, x1, y1, x2, y2,*15 images/sanitypot.png
	if ErrorLevel{
		;Msgbox,,,no sanity,1
			     }
	else{

			kurwax:=ox+70

			kurway:=oy+80
		Click, %kurwax%, %kurway%
		
		Random, random,1800,4900
		Sleep,%random%
		}
}




Esc::
Pause
Suspend

return


^j::

Loop,{
ClickStart()
;SanityShit()
ClickMission()
EndMissionCheck()
}






;--------------------------------
;--------------------------------
; ClickMap()
; Sleep,1700
; Loop,%loop%{

; ClickStart()
; Random, random,1800,4900
; Sleep,%random%

; ClickMission()
; Random, random,1400,3100
; Sleep,%random%

; EndMissionCheck() ;czeka na koniec misji
; Random, random,6800,10000
; Sleep,%random%
; }
return

; debug shit

 ; ^k::
; Msgbox,,,elobenc,1 
 ; return