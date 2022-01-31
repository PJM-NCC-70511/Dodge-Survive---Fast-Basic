
'  All Variables used in the program should be set to 0 or defined here             
MSG$=""
SC=0
EM=500
A=0
A1=0
B=0
C=0
D=0
N=0
M=0
O=0
P=0
Q=0
R=0
S=0
SC=0
HSC=0
T=0
W=0
Z=0
E1=0
DLY=0
PMBASE=@PMBANK   
SP=0
PMV=0
RMV=0
PC=0 
STK=0 
BL=0
Hit_Sound=0

Lives=3
LV=0

' Set up the Joystick Read ML Routine'
POKE 600,128
POKE 601,128
POKE 602,2
POKE 603,4
POKE 604,48
POKE 605,200
POKE 606,48
POKE 607,232
POKE $D301,PEEK($D301)!2 'Disable Internal Basic


'Main or Top Level program loop
DO 
  EXEC STAND_BY_UNTIL_READY
  POKE @NMIEN,0
  EXEC INITIALIZE
  DPOKE 19,3
  T=0  
  REPEAT 
    POKE @NMIEN,0
    IF TIME>=T THEN EXEC START_LEVEL
    POKE @NMIEN,192
    EXEC GAME_LOOP
    IF PEEK(@P0PF)&8=8 AND A1=0 THEN EXEC GOT_HIT
    IF PEEK(53260)&12>0 THEN EXEC GOT_OBJECT
    IF SC>=EM 
      EXEC BONUS_LIFE
    ENDIF 
    POKE @HITCLR,255
  UNTIL Lives<=0
  EXEC DISPLAY_GAME_OVER
LOOP 
'  ------------------------------
' Game Loop. 
PROC GAME_LOOP
  REPEAT 
    Z=USR(@JOYSTICK_MOVE)
    O=(O+8)&31
    Z=USR(@PMMOVE,1,@SPRITEBASE+O,8,PEEK(600),PEEK(601))
    Z=USR(@PMMOVE,2,@SPRITEBASE+56-O,8,PEEK(600),PEEK(601))
    Hit_Sound = 0
    IF PEEK(@DELAY_NOW) = 0
      PAUSE 0
      FOR N=@PMBANK TO BL STEP 4
        R=DPEEK(N+2)
        B=PEEK(R)
        IF B=207 OR B=208 OR B=213
          POKE R,B&127
        ENDIF
        Q=R+(PEEK(N)-128)
        A=PEEK(Q)
        D=A&127
        IF D=C
          IF PEEK(N+1)
            POKE Q,212
            IF B=212 THEN POKE R,C
          ENDIF  
          DPOKE N+2,Q      
        ELSE 
          POKE Q,A!128 
          IF D=79 THEN EXEC BOUNCE_VERT     
          IF D=80 THEN EXEC BOUNCE_HOZ     
          IF D=85 THEN EXEC INVERSE_BOUNCE 
          'POKE Q,A 
          IF B=212 THEN POKE R,C
          IF NOT PEEK(N+1) THEN POKE N+1,C
          DPOKE N+2,Q
        ENDIF 
      NEXT N
      POKE @DELAY_NOW,255
    ELSE
      PAUSE 1
      EXEC DISPLAY_TIME
    ENDIF
    IF A1 > 0
      A1=A1-1
      IF A1&1 = 0 
        POKE 704,54
        POKE 705,138
      ELSE
        POKE 704,50
        POKE 705,132      
      ENDIF
    ENDIF
     IF Hit_Sound > 0 then Z=USR(@START_SOUND,Hit_Sound,1)
    IF E1 = 0 
      EXEC WAIT
    ELIF E1 = 1      
      EXEC DEFINE
    ELIF E1 = 2
      EXEC DIAMOND
    ELIF E1 = 3      
      EXEC RING
    ENDIF
  UNTIL (PEEK(@P0PF)&8=8 AND A1=0) OR PEEK(53260)&12>0 OR TIME>=T
  'Play Game until ball hits player, player gets a bonus, or Time is expired.
  IF TIME>=T THEN SC=SC+10+LV*5:EXEC DISPLAY_SCORE
ENDPROC 
'  ------------------------------
PROC BOUNCE_HOZ
  P=PEEK(N)
  IF P=87 OR P=167
    POKE N,P+2
  ELSE 
    POKE N,P-2
  ENDIF 
  Hit_Sound = 1
ENDPROC 
'  ------------------------------
PROC BOUNCE_VERT
  P=PEEK(N)
  IF P=87 OR P=89
    POKE N,P+80
  ELSE 
    POKE N,P-80
  ENDIF 
  Hit_Sound = 3
ENDPROC 
'  ------------------------------
PROC INVERSE_BOUNCE
  P=PEEK(N)
  POKE N,256-P
  Hit_Sound = 6
ENDPROC 
'  ------------------------------
PROC WAIT
  IF RAND(100)>60+LV THEN E1=2
ENDPROC 
'  ------------------------------
PROC DEFINE
  E1=3:IF RAND(100)>80+LV/2 THEN E1=4
  REPEAT 
    E=52+RAND(144):F=48+RAND(168)
  UNTIL A<E-32-LV OR A>E+40+LV OR B<F-32-LV OR B>F+40+LV
  F1=SP+64+16*INT(LV/4.5):F2=SP+72+16*INT(LV/4.5):POKE 53250,E:POKE 53251,E
  MOVE F1,@PMBANK+1536+F,8:MOVE F2,@PMBANK+1792+F,8
  IF E1=3 
    POKE 706,70
    POKE 707,60  
  ELIF E1=4
    POKE 706,150
    POKE 707,168 
  ENDIF 
  POKE 53250,0
  POKE 53251,0 
ENDPROC 
'  ------------------------------
PROC DIAMOND
  EX=(RAND(3)-1)*(LV/3):FX=(RAND(3)-1)*(LV/3)
  E=E+EX:IF E<52 OR E>196 THEN E=E-EX
  F=F+FX:IF F<52 OR F>216 THEN F=F-FX
  Z=USR(@PMMOVE,3,@P008,8,E,F)
  Z=USR(@PMMOVE,4,@P009,8,E,F)
ENDPROC 
'  ------------------------------
PROC RING
  EX=(RAND(5)-2)*INT(LV/2.5)
  FX=(RAND(5)-2)*INT(LV/2.5)
  E=E+EX:IF E<50 OR E>198 THEN E=E-EX
  F=F+FX:IF F<50 OR F>218 THEN F=F-FX
  Z=USR(@PMMOVE,3,@P016,8,E,F)
  Z=USR(@PMMOVE,4,@P017,8,E,F)
ENDPROC 
'  ------------------------------
PROC GOT_OBJECT
  DPOKE 53250,0
  Z=USR(@PMCLEAR,@PMBANK+1536,2)
  IF E1=3
    SC=SC+LV*2
    Z=USR(@START_SOUND,0,1)
  ELIF E1=4 
    SC=SC+5+LV*3
    Z=USR(@START_SOUND,0,1)
  ENDIF
  E1=1
  EXEC DISPLAY_SCORE
ENDPROC 
'  ------------------------------
PROC BONUS_LIFE
  Z=USR(QT,0,1)
  Z=USR(@START_SOUND,4,1)
  EM=EM+500
  Lives=Lives+1
  EXEC DISPLAY_INFORMATION
ENDPROC 
'  ------------------------------
PROC GOT_HIT
  Z=USR(@PMCLEAR,@PMBANK+1024,2)
  P=DPEEK(19)
  Z=USR(@START_SOUND,2,1)
  POKE 600,124
  POKE 601,128:O=0:A1=8
  Lives = Lives-1
  EXEC DISPLAY_INFORMATION
  PAUSE 15
  DPOKE 19,P
ENDPROC 
'  ------------------------------
PROC START_LEVEL
  EXEC DISPLAY_WINDOW_HEADINGS
  EXEC SET_TIME
  SC=SC+LV*10
  LV=LV+(LV<16)
  EXEC DISPLAY_INFORMATION
  EXEC DRAW_SCREEN
  POKE 600,124:POKE 601,128:O=0:A1=2
  EXEC SET_BALLS
  P=LV&7
  POKE 708,PEEK(@LEVEL_COLOR0 + P)
  POKE 709,PEEK(@LEVEL_COLOR1 + P) 
  POKE 712,PEEK(@LEVEL_COLOR4 + P)
  POKE @COLOR_SCOREBOARD_BACK,PEEK(@LEVEL_COLOR4 + P)
  POKE @TOPZONE,PEEK(@LEVEL_ROLL_SET + P)
ENDPROC 
'  ------------------------------
PROC DISPLAY_WINDOW_HEADINGS
  MOVE @DISPLAY_HEADER,@SCREEN_ADDR,120
ENDPROC 
'  ------------------------------
PROC DISPLAY_SCORE
  POSITION 1,1:? SC
ENDPROC 
'  ------------------------------
PROC DISPLAY_INFORMATION
  POSITION 1,1:? SC
  POSITION 14,1:? Lives
  POSITION 20,1:? LV
  POSITION 32,1:? EM
  EXEC DISPLAY_TIME
ENDPROC 
'  ------------------------------
PROC DISPLAY_TIME
  POSITION 27,1
  PRINT (INT(T-TIME)/60)*(TIME<=T);" "
ENDPROC 
'  ------------------------------
PROC DRAW_SCREEN
  Z=USR(@PMCLEAR,@PMBANK,8):E1=1
  P=RAND(5)
  IF P=0 THEN C=70
  IF P=1 THEN C=73
  IF P=2 THEN C=74
  IF P=3 THEN C=75
  IF P=4 THEN C=76
  I=0:IF LV>14 THEN I=128
  POKE S,C:MOVE S,S+1,919
  POKE S,85+I:POKE S+39,85+I:POKE S+920,85+I:POKE S+959,85+I
  FOR N=S+1 TO S+38:POKE N,79+I:POKE 920+N,79+I:NEXT N
  FOR N=S+40 TO S+880 STEP 40:POKE N,80+I:POKE N+39,80+I:NEXT N
  IF LV>9
    FOR N=0 TO 2+LV/5
      POKE S+RAND(920),85+I
    NEXT N
  ENDIF 
ENDPROC 
'  ------------------------------
PROC SET_TIME
  O=INT(LV/3)
  T=1800+O*120
  DPOKE 19,0
ENDPROC 
'  ------------------------------
PROC SET_BALLS
  IF LV<3 
    BL=@PMBANK+20
    POKE @DELAY_MASK,119
  ELIF LV<7
    BL=@PMBANK+24
    POKE @DELAY_MASK,214
  ELIF LV<12
    BL=@PMBANK+28
    POKE @DELAY_MASK,85
  ELIF LV<16
    BL=@PMBANK+32
    POKE @DELAY_MASK,73
  ELSE
    BL=@PMBANK+36
    POKE @DELAY_MASK,136
  ENDIF
  POKE @DELAY_BIT,1
  FOR N=@PMBANK TO BL STEP 4
    REPEAT 
      D=@SCREEN_ADDR+160+RAND(840)
    UNTIL PEEK(D)<>79 AND PEEK(D)<>80 AND PEEK(D)<>85
    POKE  N  ,128+(1-RAND(2)*2)+40*(1-RAND(2)*2)
    POKE  N+1,0
    DPOKE N+2,D  
  NEXT N
ENDPROC 
'  ------------------------------
PROC DISPLAY_GAME_OVER
  MSG$=" G  A  M  E     O  V  E  R "
  FOR N=12 TO 38
    POKE @SCREEN_ADDR+ 0  + N,82
    POKE @SCREEN_ADDR+ 80 + N,82
  NEXT N
  POSITION 12,1
  PRINT MSG$
  PAUSE 60
ENDPROC 
'  ------------------------------
PROC STAND_BY_UNTIL_READY
  GRAPHICS 0
  O=0
  POKE @NMIEN,64
  POKE 756,@CHARSET_GAME_HI
  POKE 710,$D2
  POKE 712,$D2
  POKE 709,$AA
  IF SC>HSC THEN HSC=SC
  EXEC DISPLAY_TITLE
  EXEC WAIT_FOR_START
ENDPROC 
'  ------------------------------
PROC DISPLAY_TITLE
  CLS 
  POSITION 0,9:? "      * * * DODGE SURVIVE * * *                   BY PETER J. MEYER"
  POSITION 2,14:? "LAST SCORE:";SC
  POSITION 2,16:? "HIGH SCORE:";HSC
ENDPROC 
'  ------------------------------
PROC WAIT_FOR_START
  REPEAT 
  UNTIL STRIG(0)=0 OR PEEK(53279)&1=0
ENDPROC 
'  ------------------------------
PROC INITIALIZE
  SC=0:Lives=3:LV=0
  POKE 623,33
  POKE 53277,3
  PMBASE = @PMBANK_HI*256
  Z=USR(@PMCLEAR,@PMBANK+768,5)
  DPOKE 560,@DISPLAY_LIST_GAME
  DPOKE 88,@SCREEN_ADDR
  DPOKE @VDSLST,@GAME00_DLI
  DPOKE @VVBLKD,@GAME_VBI
  S = @GAME_SCREEN_ADDR
  POKE @TOPZONE,20
  POKE 54279,@PMBANK_HI
  POKE 559,$3E
  POKE 756,@CHARSET_GAME_HI
  POKE 704,54
  POKE 705,138
  POKE 708,$42
  POKE 709,$0A
  POKE 710,$94
  POKE 711,$3C
  POKE 712,$70
  POKE @COLOR_SCOREBOARD_BACK,$70 
  POKE @COLOR_SCOREBOARD_FORE,$0C
  POKE 752,1
ENDPROC 
'  ------------------------------
