        .segment "ALIGNDATA"
CHARSET_GAME:
  .incbin         "DODGESURVIVE.FNT" ;Have

PMBANK                                  =$1800                                        
VARBANK                                 =$0600                                                                                                                                       
SCREEN_ADDR                             =$0800                                         
GAME_SCREEN_ADDR                        =$0880                                        

RTCLOCK                                 =$12
PMBANK_HI                               =>PMBANK   

M0		        	          	            =$C0
M1		        	          	            =$C1
M2		        	          	            =$C2
M3		        	          	            =$C3
M4		        	          	            =$C4
M5		        	          	            =$C5
M6		        	          	            =$C6
M7		        	          	            =$C7
M8		        	          	            =$C8
M9		        	          	            =$C9
NDX0									                  =$CA
NDX1									                  =$CB
NDX2									                  =$CC
NDX3									                  =$CD
HOLDX									                  =$CE
HOLDY									                  =$CF

PMSAVELO                                = PMBANK + $02E0
PMSAVEHI                                = PMBANK + $02E8
PMSAVESZ                                = PMBANK + $02F0
PMNUMBER                                = M9
FROMLO                                  = NDX0
FROMHI                                  = NDX1
PMYPOS                                  = NDX2
PAGEBASE                                = NDX0
PAGEBSHI                                = NDX1


              
                                      ;PLAY_SOUNDS                                      =SOUND_COMMANDER + $0000	    
                                      ;START_SOUND                                      =SOUND_COMMANDER + $009F      
                                      ;GET_NEXT_MUSIC_NOTE                              =SOUND_COMMANDER + $00F6      
                                      ;STOP_SOUND                                       =SOUND_COMMANDER + $0189      
                                      ;SILENCE                                          =SOUND_COMMANDER + $019E      

SPRITENUM	                                        =PMBANK+$0180
SETSP0COLOR                                       =PMBANK+$0190
SETSP1COLOR                                       =PMBANK+$01A0
SETSPWIDTH                                        =PMBANK+$01B0
SPRITENHOZ                                        =PMBANK+$01C0
SPRITENVRT                                        =PMBANK+$01E0
SPHOZNEXT                                         =PMBANK+$01F0

SPRHZ0	                            	            =PMBANK+$0200 
SPRHZ1	                            	            =PMBANK+$0210 
SPRHZ2	                            	            =PMBANK+$0220 
SPRHZ3	                            	            =PMBANK+$0230 
SPZONT                                            =PMBANK+$0240
SPZONB                                            =PMBANK+$0250
SPSRC0                                            =PMBANK+$0260 
SPSRC1                                            =PMBANK+$0278
SPSRC2                                            =PMBANK+$0290
SPSRC3                                            =PMBANK+$02A8
SPSRC4                                            =PMBANK+$02C0
SPRITEUSE                                         =PMBANK+$02D8
                                            
MIBANK                                            =PMBANK+$0300
PMBNK0                                            =PMBANK+$0400
PMBNK1                             	              =PMBANK+$0500
PMBNK2                                            =PMBANK+$0600
PMBNK3                             	              =PMBANK+$0700
            
character_px                                      =VARBANK + $020
character_py                                      =VARBANK + $021
character_status                                  =VARBANK + $022
prior_py                                          =VARBANK + $024
stick_read                                        =VARBANK + $026 
character_frame                                   =VARBANK + $027
prior_rt_clock                                    =VARBANK + $02C
menu_selection                                    =VARBANK + $02D
find_option                                       =VARBANK + $02E
bombs_on_option                                   =VARBANK + $02F
walls_on_option                                   =VARBANK + $030
shooters_option                                   =VARBANK + $032
mind_color                                        =VARBANK + $034
show_countdown                                    =VARBANK + $036
balls_found                                       =VARBANK + $038
balls_under                                       =VARBANK + $03A
titlephase                                        =VARBANK + $03C
score                                             =VARBANK + $03E
lives                                             =VARBANK + $040
level                                             =VARBANK + $041
topMem                                            =VARBANK + $042;
chbase1                                           =VARBANK + $044;
row_addr                                          =VARBANK + $046; 
DELAY_MASK                                	      =VARBANK + $048;
DELAY_BIT	                                		    =VARBANK + $049; 
DELAY_NOW                                 		    =VARBANK + $04A;
zondx                                             =VARBANK + $04C;
TOPZONE                                           =VARBANK = $04D
COLOR_SCOREBOARD_BACK                             =VARBANK + $050; 
COLOR_SCOREBOARD_FORE                             =VARBANK + $051;
SOUND_COMMANDER_VARIABLE_AREA                     =VARBANK + $060;

      .export PMBANK
      .export VARBANK                                        
      .export SCREEN_ADDR                                         
      .export GAME_SCREEN_ADDR
      .export PMBANK_HI

      .export M0									  
      .export M1									  
      .export M2								  
      .export M3									  
      .export M4									  
      .export M5								  
      .export M6									  
      .export M7									  
      .export M8									  
      .export M9									  
      
      .export NDX0									  
      .export NDX1									  
      .export NDX2									  
      .export NDX3									  
      .export HOLDX									  
      .export HOLDY									                  
      ;.export _PLAY_SOUNDS           
      ;.export _START_SOUND           
      ;.export GET_NEXT_MUSIC_NOTE   
      ;.export _STOP_SOUND            
      ;.export _SILENCE               
      .export SPRITENUM	            
      .export SETSP0COLOR           
      .export SETSP1COLOR           
      .export SETSPWIDTH            
      .export SPRITENHOZ            
      .export SPRITENVRT            
      .export SPHOZNEXT             
      .export SPRHZ0	              
      .export SPRHZ1	              
      .export SPRHZ2	              
      .export SPRHZ3	              
      .export SPZONT                
      .export SPZONB                
      .export SPSRC0                
      .export SPSRC1                
      .export SPSRC2                
      .export SPSRC3                
      .export SPSRC4                
      .export SPRITEUSE                                    
      .export MIBANK                
      .export PMBNK0                          
      .export PMBNK1                    
      .export PMBNK2                    
      .export PMBNK3                

      .export character_px     
      .export character_py     
      .export character_status 
      .export prior_py         
      .export stick_read       
      .export character_frame
      .export prior_rt_clock   
      .export menu_selection   
      .export find_option      
      .export bombs_on_option  
      .export walls_on_option  
      .export shooters_option  
      .export mind_color       
      .export show_countdown   
      .export balls_found      
      .export balls_under      
      .export titlephase       
      .export score            
      .export lives                  
      .export level                  
      .export topMem                 
      .export chbase1                
      .export row_addr               
      .export DELAY_MASK  	             
      .export DELAY_BIT  	             
      .export DELAY_NOW  	             
      .export zondx
      .export TOPZONE
      .export COLOR_SCOREBOARD_BACK 
      .export COLOR_SCOREBOARD_FORE



       
      .include "..\asminc\Atari 8-bit Equates.asm"
      .include "..\asminc\zeropage.inc"      
      .include "atari_sound_commander_bas.asm"
            



; *** end of main startup code



GAME_VBI:
      .export GAME_VBI 
      lda #<GAME00_DLI
      sta VDSLST+0
      lda #>GAME00_DLI
      sta VDSLST+1
      lda TOPZONE
      sta zondx
      eor #1
      sta TOPZONE
      LDA 20
      AND #1
      BNE No_Delay_Bit_Change
      LDA DELAY_BIT
      BEQ Reset_Delay_Bit
      ASL
      STA DELAY_BIT
      JMP Set_Delay_Bit_Done
Reset_Delay_Bit:
      LDA #1
      STA DELAY_BIT
      LDA #0
Set_Delay_Bit_Done:
      AND DELAY_MASK
      STA DELAY_NOW
No_Delay_Bit_Change:

  ;//  inc_RTCLOCK
  ;//bne no_inc_other_clock
  ;//inc RTCLOCK+1
  ;//no_inc_other_clock:
      
;//	  	LDA prior_py
;//	  	STA NDX2
;//	  	LDA #>PMBNK0
;//	  	STA NDX3
	  	
;//	  	LDA #0
;//	  	LDY #13
;//Clear_Character_Prior_Loop:
;//      STA (NDX2),Y
;//      DEY
;//      BPL Clear_Character_Prior_Loop   	
      	
;//      LDA character_py
;//      STA NDX2
;//      LDA #>PMBNK0
;//      STA NDX3
        
;//      LDY character_frame  
        
             
;//      LDA SPRITEADDR_PLY0LO,Y
;//      STA NDX0
        
;//      LDA SPRITEADDR_PLY0HI,Y
;//      STA NDX1
        	
;//      LDY #13
;//Copy_Character_Image_Loop:
;//		LDA (NDX0),Y
;//		STA (NDX2),Y
;//		DEY
;//		BPL Copy_Character_Image_Loop
		
;//		LDA character_px
;//		STA HPOSP0   	
    
;//    LDA character_py 
;//		STA prior_py 
    JSR PROCESS_SOUNDS

		JMP XITVBV	


TITLE_VBI:
      .export TITLE_VBI 
		lda #<TITLE00_DLI
		sta VDSLST+0
		lda #>TITLE00_DLI
		sta VDSLST+1
		lda #$22
		sta COLBAK
		lda #$36
		sta COLPF3				
		inc RTCLOCK+2
		jmp XITVBV


PAUSE_VBI:
      .export PAUSE_VBI

		jmp XITVBV

TITLE00_DLI:
      .export TITLE00_DLI 
	pha	
	lda #$D8
	sta WSYNC
	sta COLPF0
	lda #$06
	sta COLPF1
	lda #$AA
	sta COLPF1
;	lda #>CHARSET_TITLE
;	sta CHBASE
	lda #<TITLE01_DLI
	sta VDSLST+0
	lda #>TITLE01_DLI
	sta VDSLST+1
	pla
	rti

TITLE01_DLI:
      .export TITLE01_DLI 
	pha	
	lda #142
	sta WSYNC
	sta COLPF0
	lda #216
	sta COLPF1
	lda #56
	sta COLPF2
	lda #>CHARSET_GAME
 	sta CHBASE
	lda #<TITLE00_DLI
	sta VDSLST+0
	lda #>TITLE00_DLI
	sta VDSLST+1
	pla
	rti

TITLE02_DLI:
      .export TITLE02_DLI 
	PHA
  PLA
  RTI


TITLE03_DLI:
      .export TITLE03_DLI 
	PHA
  
  PLA
  RTI


GAME00_DLI:
      .export GAME00_DLI 
	PHA

  LDA COLOR_SCOREBOARD_BACK
  STA COLPF2
  LDA COLOR_SCOREBOARD_FORE
  STA COLPF1
  
  LDA #<GAME01_DLI
  STA VDSLST+0
  LDA #>GAME01_DLI
  STA VDSLST+1

  ; Scoreboard
  
  PLA
  RTI

GAME01_DLI:
      .export GAME01_DLI 
	PHA
  TXA
  PHA

  LDA 710
  STA COLPF2

  LDX zondx
  LDA COLORROLL,X
  STA COLPF1
  ; Rainbow Effect
  INC zondx


  LDA #<GAME02_DLI
  STA VDSLST+0
  LDA #>GAME02_DLI
  STA VDSLST+1

  ; Top of Game Screen
  PLA
  TAX
  PLA
  RTI

GAME02_DLI:
      .export GAME02_DLI 
	PHA
  TXA
  PHA
  LDX zondx
  LDA COLORROLL,X
  STA COLPF1
  ; Rainbow Effect
  INC zondx
  PLA
  TAX
  PLA
  RTI

GAME03_DLI:
      .export GAME03_DLI 
	PHA
  PLA
  RTI

GAME04_DLI:
      .export GAME04_DLI 
	PHA
  PLA
  RTI



RANDOM_PLACE_BALLS:
    .export RANDOM_PLACE_BALLS
			LDA #193
      LDY RANDOM      
      STA GAME_SCREEN_ADDR+0,Y
      LDY RANDOM
      STA GAME_SCREEN_ADDR+256,Y 
      LDY RANDOM
      STA GAME_SCREEN_ADDR+512,Y 
      LDY RANDOM
      STA GAME_SCREEN_ADDR+768,Y        
      RTS


_SCAN_FOR_BALLS:
            .export _SCAN_FOR_BALLS            
;     
; Scan For Balls
;
                            
              LDA character_px
              SEC
              SBC #55
              CMP #248
              BCC SM_L0 
              LDA #0
SM_L0:
              CMP #148
              BCC SM_L1
              LDA #148
SM_L1:                                                         
              LSR
              LSR 
              STA M2
              
              LDA character_py
              SEC
              SBC #32
              BCS SM_L2
              LDA #0
SM_L2:              
              LSR
              LSR 
              LSR
              STA M1

              LDA #0
              STA M6
              STA balls_found 
              LDY M1
              CPY #26
              BCS Scan_For_restore_Beyond_Screen
              DEY
              DEY                

              STY M5
              BPL No_0_First_restore_Row
              LDY #0
No_0_First_restore_Row:
              LDA M2
              CLC
              ADC SCRREN_ROW_LOW,Y
              STA NDX0
              LDA SCRREN_ROW_HIGH,Y
              ADC #0
              STA NDX1
Scan_restore_Row_Start:
              LDA M5
              BEQ Skip_restore_Scan_Row
              CMP #26
              BCS Skip_restore_Scan_Row                           
              LDY #5
Scan_For_restore_Loop:                          
              LDA (NDX0),Y
              CMP M3 
              BNE No_restore_Found
              LDA M4
              STA (NDX0),Y
              INC balls_found
No_restore_Found:
              DEY
              BPL Scan_For_restore_Loop

              LDA NDX0
              CLC
              ADC #40 ; or 48 if widescren
              STA NDX0
              BCC SM_L5
              INC NDX1
SM_L5:       

Skip_restore_Scan_Row:
              LDY M6
              INY
              CPY #5
              STY M6
              BCS Scan_For_restore_Beyond_Screen
              INC M5 
              JMP Scan_restore_Row_Start                                             
Scan_For_restore_Beyond_Screen:
              RTS
; ------------------------------------------------------------------------
JOYSTICK_MOVE:
    .export JOYSTICK_MOVE
;     PLA
      LDA $0258 
      STA $0256 
      LDA $0259 
      STA $0257 
      LDA STICK0
      TAY       
      AND #$01  
      BNE MS_L2 
      LDA $0259 
      SEC       
      SBC $025B 
      CMP $025E 
      BCS MS_L3 
      LDA $025E 
      STA $0259 
MS_L2:
      TYA       
      AND #$02  
      BNE MS_L4 
      LDA $0259 
      CLC       
      ADC $025B 
      CMP $025F 
      BCC MS_L3 
      LDA $025F 
MS_L3:
      STA $0259
MS_L4:     
      TYA       
      AND #$04  
      BNE MS_L6
      LDA $0258 
      SEC       
      SBC $025A 
      CMP $025C 
      BCS MS_L5
      LDA $025C 
MS_L5:
      STA $0258 
MS_L6:
      TYA       
      AND #$08  
      BNE MS_L8 
      LDA $0258 
      CLC       
      ADC $025A 
      CMP $025D 
      BCC MS_L7
      LDA $025D
MS_L7:
      STA $0258 
MS_L8:
      RTS       
; ------------------------------------------------------------------------        
PMMOVE:
    
;   PLA
;   PLA
;   PLA
;   PLA
;   PLA
;   PLA
;   PLA     
;   PLA
;   PLA     

;   CMP #$05   
;   BEQ RIGHT_AMOUNT        
;   TAY 
;CLEANSTACK:
;    PLA 
;    PLA 
;    DEY 
;    BPL CLEANSTACK

 
    
;RIGHT_AMOUNT:
    PLA 
    PLA 
    STA M6
    PLA 
    PLA 
    STA M7     
    PLA
    PLA
    STA M8
    PLA 
    STA FROMHI
    PLA 
    STA FROMLO    
    PLA
    PLA
    STA PMNUMBER
    TAX    
    LDA M7
    CPX #$05
    BNE COMBOSKIP
    CLC 
    ADC #$08
    STA HPOSM0
    SEC 
    SBC #$02
    STA HPOSM1
    SBC #$02
    STA HPOSM2
    SBC #$02
    LDX #7
COMBOSKIP:
    STA HPOSP0-1,X
    TXA
    CLC 
    ADC #$03
    CMP #$08
    BCC NOCOMBO
    LDA #$03
NOCOMBO:
    CLC
    ADC #PMBANK_HI
    STA PMYPOS+1    
    LDA PMSAVELO,X
    STA PMYPOS+0
    LDA PMSAVESZ,X
    TAY 
    LDA #$00
CLEARLOOP:
    STA (PMYPOS),Y
    DEY 
    BPL CLEARLOOP     
    LDA M6
    STA PMSAVELO,X
    STA PMYPOS+0
    LDA M8
    STA PMSAVESZ,X
    TAY                
    DEY 
DRAWLOOP:
    LDA (FROMLO),Y
    STA (PMYPOS),Y
    DEY 
    BPL DRAWLOOP
    RTS
.export PMMOVE    
     
; ------------------------------------------------------------------------
PMCLEAR:                          
    .export PMCLEAR               
    PLA 
    PLA 
    TAX 
    PLA 
    STA PAGEBSHI
    PLA
    STA PAGEBASE
NEXTPAGE:
    LDY #$00
    TYA 
PGCLRLOOP:
    STA (PAGEBASE),Y
    DEY 
    BNE PGCLRLOOP
    INC PAGEBSHI
    DEX
    BNE PGCLRLOOP
    RTS


;_CHARSET_TITLE:
;  .incbin         "DODGE SURVIVE TITLE.FNT" ;Need
;_TITLE_DATA:
;  .incbin         "DODGE SURVIVE TITLE SCREEN.txt" ;Need

      CHARSET_GAME_HI = > CHARSET_GAME
;      CHARSET_TITLE_HI = > CHARSET_TITLE
     
      .export CHARSET_GAME
;     .export CHARSET_TITLE
;     .export CHARSET_GAME_HI 
;     .export CHARSET_TITLE_HI
;     .export TITLE_DATA

;     CHARSET_TITLE_HI         = .hibyte(_CHARSET_TITLE)
;     CHARSET_GAME_HI          = .hibyte(_CHARSET_GAME)
;     .export CHARSET_TITLE_HI
      .export CHARSET_GAME_HI
      
display_list_title:
     .byte $70,$50,$F0,$44
     .byte <SCREEN_ADDR
     .byte >SCREEN_ADDR
     .byte $02,$02,$02,$02,$02,$02,$02,$02
     .byte $02,$02,$02,$02,$02,$02,$02,$02
     .byte $02,$02,$02,$02,$02,$02,$02,$41
     .byte <display_list_title 
     .byte >display_list_title

; Converted from Set Up Data    
DISPLAY_LIST_GAME:
     .byte $70,$E0,$42
     .byte <SCREEN_ADDR
     .byte >SCREEN_ADDR
     .byte $02,$02,$80,$44
     .byte <GAME_SCREEN_ADDR
     .byte >GAME_SCREEN_ADDR
     .byte $84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$84,$04,$41
     .byte <DISPLAY_LIST_GAME 
     .byte >DISPLAY_LIST_GAME
      
      .export display_list_title
      .export DISPLAY_LIST_GAME


SCRREN_ROW_LOW:
    .byte <(GAME_SCREEN_ADDR +   0),<(GAME_SCREEN_ADDR +   40), <(GAME_SCREEN_ADDR +  80), <(GAME_SCREEN_ADDR + 120), <(GAME_SCREEN_ADDR + 160)
    .byte <(GAME_SCREEN_ADDR + 200), <(GAME_SCREEN_ADDR + 240), <(GAME_SCREEN_ADDR + 280), <(GAME_SCREEN_ADDR + 320), <(GAME_SCREEN_ADDR + 360)  
  	.byte <(GAME_SCREEN_ADDR + 400), <(GAME_SCREEN_ADDR + 440), <(GAME_SCREEN_ADDR + 480), <(GAME_SCREEN_ADDR + 520), <(GAME_SCREEN_ADDR + 560)
  	.byte <(GAME_SCREEN_ADDR + 600), <(GAME_SCREEN_ADDR + 640), <(GAME_SCREEN_ADDR + 680), <(GAME_SCREEN_ADDR + 720), <(GAME_SCREEN_ADDR + 760)
    .byte <(GAME_SCREEN_ADDR + 800), <(GAME_SCREEN_ADDR + 840), <(GAME_SCREEN_ADDR + 880), <(GAME_SCREEN_ADDR + 920), <(GAME_SCREEN_ADDR + 960)
    .byte <(GAME_SCREEN_ADDR + 1000) 
    
SCRREN_ROW_HIGH:
	  .byte >(GAME_SCREEN_ADDR +   0), >(GAME_SCREEN_ADDR +  40), >(GAME_SCREEN_ADDR +  80), >(GAME_SCREEN_ADDR + 120), >(GAME_SCREEN_ADDR + 160)
  	.byte >(GAME_SCREEN_ADDR + 200), >(GAME_SCREEN_ADDR + 240), >(GAME_SCREEN_ADDR + 280), >(GAME_SCREEN_ADDR + 320), >(GAME_SCREEN_ADDR + 360)
  	.byte >(GAME_SCREEN_ADDR + 400), >(GAME_SCREEN_ADDR + 440), >(GAME_SCREEN_ADDR + 480), >(GAME_SCREEN_ADDR + 520), >(GAME_SCREEN_ADDR + 560)
  	.byte >(GAME_SCREEN_ADDR + 600), >(GAME_SCREEN_ADDR + 640), >(GAME_SCREEN_ADDR + 680), >(GAME_SCREEN_ADDR + 720), >(GAME_SCREEN_ADDR + 760)
  	.byte >(GAME_SCREEN_ADDR + 800), >(GAME_SCREEN_ADDR + 840), >(GAME_SCREEN_ADDR + 880), >(GAME_SCREEN_ADDR + 920), >(GAME_SCREEN_ADDR + 960)
  	.byte >(GAME_SCREEN_ADDR + 1000)  

      .export SCRREN_ROW_LOW
      .export SCRREN_ROW_HIGH


DISPLAY_HEADER:
  ;       0   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39
  .byte  81, 82, 82, 51, 99,111,114,101, 89, 82, 82, 87, 44,105,118,101,115, 89, 87, 44,101,118,101,108, 82, 87, 52,105,109,101, 89, 87, 82, 34,111,110,117,115, 89, 69
  .byte 124,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,124,  0,  0,  0,  0,  0,  0,124,  0,  0,  0,  0,  0,  0,124,  0,  0,  0,  0,  0,124,  0,  0,  0,  0,  0,  0,  0,124
  .byte  90, 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 88, 82, 82, 82, 82, 82, 82, 88, 82, 82, 82, 82, 82, 82, 88, 82, 82, 82, 82, 82, 88, 82, 82, 82, 82, 82, 82, 82, 67
  .export DISPLAY_HEADER
 ; 0123456789012345678901234567890123456789
 ; ....SCORE....MEN.LEVEL.TIME....BONUS...
 ; |           |   |     |    |           |
COLORROLL:
  .byte $18,$18,$28,$28,$38,$38,$48,$48
  .byte $58,$58,$68,$68,$78,$78,$88,$88
  .byte $98,$98,$A8,$A8,$B8,$B8,$C8,$C8
  .byte $D8,$D8,$E8,$E8,$F8,$F8,$18,$18
  .byte $28,$28,$38,$38,$48,$48,$58,$58
; .byte ,$68,$68,$78,$78,$88,$88
; .byte $98,$98,$A8,$A8,$B8,$B8,$C8,$C8
; .byte $D8,$D8,$E8,$E8,$F8,$F8

  .byte $F8,$F8,$E8,$E8,$D8,$D8,$C8,$C8
  .byte $B8,$B8,$A8,$A8,$98,$98,$88,$88
  .byte $78,$78,$68,$68,$58,$58,$48,$48
  .byte $38,$38,$28,$28,$18,$18,$F8,$F8
  .byte $E8,$E8,$D8,$D8,$C8,$C8,$B8,$B8
; .byte $A8,$A8,$98,$98,$88,$88
; .byte $78,$78,$68,$68,$58,$58,$48,$48
; .byte $38,$38,$28,$28,$18,$18


; Converted from Set Up Data
P000:   
.byte %00111100; $3C
.byte %01000010; $42
.byte %10000001; $81
.byte %10100101; $A5
.byte %10100101; $A5

.byte %10000001; $81
.byte %01000010; $42
.byte %00111100; $3C

P001:
.byte %00111100; $3C
.byte %01000010; $42
.byte %10010001; $91
.byte %10100001; $A1
.byte %10000101; $85
.byte %10001001; $89
.byte %01000010; $42
.byte %00111100; $3C
P002:
.byte %00111100; $3C
.byte %01000010; $42
.byte %10011001; $99
.byte %10000001; $81
.byte %10000001; $81
.byte %10011001; $99
.byte %01000010; $42
.byte %00111100; $3C
P003:
.byte %00111100; $3C
.byte %01000010; $42
.byte %10001001; $89
.byte %10000101; $85
.byte %10100001; $A1
.byte %10010001; $91
.byte %01000010; $42
.byte %00111100; $3C
P004:
.byte %00011100; $1C
.byte %00111110; $3E
.byte %01111111; $7F
.byte %11111111; $FF
.byte %11111111; $FF
.byte %11111110; $FE
.byte %01111100; $7C
.byte %00111000; $38 
P005:
.byte %00000000; $00
.byte %01111110; $7E
.byte %11111111; $FF
.byte %11111111; $FF
.byte %11111111; $FF
.byte %11111111; $FF
.byte %01111110; $7E
.byte %00000000; $00
P006:
.byte %00111000; $38
.byte %01111100; $7C
.byte %11111110; $FE
.byte %11111111; $FF
.byte %11111111; $FF
.byte %01111111; $7F
.byte %00111110; $3E
.byte %00011100; $1C
P007:
.byte %00111100; $3C
.byte %01111110; $7E
.byte %01111110; $7E
.byte %01111110; $7E
.byte %01111110; $7E
.byte %01111110; $7E
.byte %01111110; $7E
.byte %00111100; $3C
P008:
.byte %11111111; $FF
.byte %01111110; $FE
.byte %00111100; $7C
.byte %00011000; $38
.byte %00011000; $10
.byte %00111100; $38
.byte %01111110; $7C
.byte %11111111; $FE
P009:
.byte %11111111; $C1
.byte %11111111; $E3
.byte %11111111; $F7
.byte %11111111; $FF
.byte %11100111; $F7
.byte %11000011; $E3
.byte %10000001; $C1
.byte %00000000; $80
P010:
.byte %00000000; $00
.byte %01111110; $7E
.byte %01111100; $7C
.byte %00111000; $38
.byte %00010000; $10
.byte %00111000; $38
.byte %01111100; $7C
.byte %00000000; $00
P011:
.byte %00000000; $00
.byte %01100010; $62
.byte %01110110; $76
.byte %01111110; $7E
.byte %01110110; $76
.byte %01100010; $62
.byte %01000000; $40
.byte %00000000; $00
P012:
.byte %00000000; $00
.byte %00000000; $00
.byte %00111100; $3C
.byte %00111000; $38
.byte %00010000; $10
.byte %00111000; $38
.byte %00000000; $00
.byte %00000000; $00
P013:
.byte %00000000; $00
.byte %00000000; $00
.byte %00110100; $34
.byte %00111100; $3C
.byte %00110100; $34
.byte %00100000; $20
.byte %00000000; $00
.byte %00000000; $00
P014:
.byte %00000000; $00
.byte %00000000; $00
.byte %00000000; $00
.byte %00011000; $18
.byte %00000000; $00
.byte %00000000; $00
.byte %00000000; $00
.byte %00000000; $00
P015:
.byte %00000000; $00
.byte %00000000; $00
.byte %00000000; $00
.byte %00010000; $10
.byte %00010000; $10
.byte %00000000; $00
.byte %00000000; $00
.byte %00000000; $00
P016:
.byte %00111100; $3C
.byte %01100110; $66
.byte %11000011; $C3
.byte %10000001; $81
.byte %10000000; $80
.byte %11000000; $C0
.byte %01100000; $60
.byte %00110000; $30 
P017:
.byte %00110000; $30lis
.byte %01100000; $60
.byte %11000000; $C0
.byte %10000000; $80
.byte %00000001; $01
.byte %00000011; $03
.byte %00000110; $06
.byte %00001100; $0C
P018:
.byte %00000000; $00
.byte %00011000; $18
.byte %00111100; $3C
.byte %01111110; $7E
.byte %01111110; $7E
.byte %00111100; $3C
.byte %00011000; $18
.byte %00000000; $00
 


      .export P000
      .export P001
      .export P002
      .export P003
      .export P004
      .export P005
      .export P006
      .export P007
      .export P008
      .export P009
      .export P010
      .export P011
      .export P012
      .export P013
      .export P014
      .export P015
      .export P016
      .export P017 
      .export P018


SPRITEBASE = P000
 
SPRITEADDR_PLY0LO:
      .byte <P000,<P001,<P002,<P003,<P004,<P005,<P006,<P007,<P008,<P009,<P010,<P011,<P012,<P013,<P014,<P015
      .byte <P016,<P017,<P018
SPRITEADDR_PLY0HI: 
      .byte >P000,>P001,>P002,>P003,>P004,>P005,>P006,>P007,>P008,>P009,>P010,>P011,>P012,>P013,>P014,>P015
      .byte >P016,>P017,>P018
     
SPRITEADDR_PLY0W:
      .word P000,P001,P002,P003,P004,P005,P006,P007,P008,P009,P010,P011,P012,P013,P014,P015
      .word P016,P017,P018

      .export SPRITEBASE
      .export SPRITEADDR_PLY0LO      ; Makes Sprite Address Table available to C compiled program
      .export SPRITEADDR_PLY0HI      ; Makes Sprite Address Table available to C compiled program
      .export SPRITEADDR_PLY0W       ; Makes Sprite Address Table available to C compiled program

START_SOUND_ADDR_LO:                                                                                                                                                                                                                                                                       
     .BYTE <SOUND_0,<SOUND_1,<SOUND_2,<SOUND_3
     .BYTE <SOUND_4,<SOUND_5,<SOUND_6
START_SOUND_ADDR_HI:                                                                                                                                                                                                                                                                       
     .BYTE >SOUND_0,>SOUND_1,>SOUND_2,>SOUND_3
     .BYTE >SOUND_4,>SOUND_5,>SOUND_6
START_SOUND_LENGTH_LO:                                                                                                                                                                                                                                                                         
     .BYTE <SOUND_0_SIZE,<SOUND_1_SIZE,<SOUND_2_SIZE
     .BYTE <SOUND_3_SIZE,<SOUND_4_SIZE,<SOUND_5_SIZE
     .BYTE <SOUND_6_SIZE
START_SOUND_LENGTH_HI:                                                                                                                                                                                                                                                                     
     .BYTE >SOUND_0_SIZE,>SOUND_1_SIZE,>SOUND_2_SIZE
     .BYTE >SOUND_3_SIZE,>SOUND_4_SIZE,>SOUND_5_SIZE
     .BYTE >SOUND_6_SIZE

SHOOT_SOUND:
    
SOUND_0:
     .BYTE $AF,$01,$AE,$07,$AD,$02,$AC,$06,$AB,$03
     .BYTE $AA,$05,$A9,$04,$A8,$04,$A7,$04,$A6,$04
     .BYTE $A5,$04,$A4,$04,$A3,$04,$A2,$04,$A1,$04   
SOUND_0_SIZE=(*-SOUND_0) / 2 + 1

SOUND_1:
     .BYTE $A9,$0C,$A6,$0C,$83,$18    
SOUND_1_SIZE=(*-SOUND_1) / 2 + 1

SOUND_2:
     .BYTE $6F,$01,$6F,$02,$6F,$04,$6F,$08,$6F,$10
     .BYTE $6C,$02,$6C,$04,$6C,$08,$6C,$10,$6C,$20
     .BYTE $69,$04,$69,$08,$69,$10,$69,$20,$69,$40
     .BYTE $66,$08,$66,$10,$66,$20,$66,$40,$66,$80
     .BYTE $63,$10,$63,$20,$63,$40,$63,$80,$63,$FF
SOUND_2_SIZE=(*-SOUND_2) / 2 + 1
    
SOUND_3:    
     .BYTE $A9,$1C,$A6,$1C,$A3,$38
SOUND_3_SIZE=(*-SOUND_3) / 2 + 1

SOUND_4:    
     .BYTE $6F,$06,$6F,$04,$6F,$02,$6F,$00,$6C,$08
     .BYTE $6C,$06,$6C,$04,$6C,$02,$6A,$0A,$6A,$08
     .BYTE $6A,$06,$6A,$04,$68,$0C,$68,$0A,$68,$08
     .BYTE $68,$06,$66,$0E,$66,$0C,$66,$0A,$66,$08
     .BYTE $64,$10,$64,$0E,$64,$0C,$64,$0A,$62,$12
     .BYTE $62,$10,$62,$0E,$62,$0C,$61,$14,$61,$12
     .BYTE $61,$10,$61,$0E
SOUND_4_SIZE=(*-SOUND_4) / 2 + 1

SOUND_5:    
     .BYTE $AF,$02,$AF,$04,$AF,$08,$AF,$10,$AF,$20
     .BYTE $AC,$03,$AC,$06,$AC,$0C,$AC,$18,$AC,$30
     .BYTE $A9,$04,$A9,$08,$A9,$10,$A9,$20,$A9,$40
     .BYTE $A6,$05,$A6,$0A,$A6,$14,$A6,$28,$A6,$50
     .BYTE $A3,$06,$A3,$0C,$A3,$18,$A3,$30,$A3,$60
SOUND_5_SIZE=(*-SOUND_5) / 2 + 1

SOUND_6:
    .BYTE $A9,$28,$A6,$28,$A3,$50
SOUND_6_SIZE=(*-SOUND_6) / 2 + 1       

LEVEL_COLOR0:
  .BYTE $42,$22,$A2,$C2,$32,$82,$E2,$62
LEVEL_COLOR1:
  .BYTE $94,$D4,$14,$94,$74,$34,$24,$B4
LEVEL_COLOR4:
  .BYTE $70,$00,$20,$50,$F0,$10,$60,$B0
LEVEL_ROLL_SET:
  .BYTE   4, 12,  8, 44, 52, 48, 16,56

  .export LEVEL_COLOR0
  .export LEVEL_COLOR1  
  .export LEVEL_COLOR4
  .export LEVEL_ROLL_SET
    