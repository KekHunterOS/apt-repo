#!/usr/bin/python3

from random import choice

banner_1='''
                 .eeeeeeeee
                .$$$$$$$$P"
               .$$$$$$$$P
              z$$$$$$$$P
             z$$$$$$$$"
            z$$$$$$$$"
           d$$$$$$$$"
          d$$$$$$$$"
        .d$$$$$$$P
       .$$$$$$$$P
      .$$$$$$$$$.........
     .$$$$$$$$$$$$$$$$$$"
    z$$$$$$$$$$$$$$$$$P"
   -**********$$$$$$$P
             d$$$$$$"
           .d$$$$$$"
          .$$$$$$P"
         z$$$$$$P
        d$$$$$$"
      .d$$$$$$"
     .$$$$$$$"
    z$$$$$$$beeeeee
   d$$$$$$$$$$$$$*
  ^""""""""$$$$$"
          d$$$*
         d$$$"
        d$$*
       d$P"
     .$$"
    .$P"
   .$"
  .P"
 ."     
/"

==========================================================
		ThunderStrike-FrameWork
==========================================================

'''

banner_2='''

     .edee...      .....       .eeec.   ..eee..
   .d*"  """"*e..d*"""""**e..e*""  "*c.d""  ""*e.
  z"           "$          $""       *F         **e.
 z"             "c        d"          *.           "$.
.F                        "            "            'F
d                                                   J%
3         .                                        e"
4r       e"              .                        d"
 $     .d"     .        .F             z ..zeeeeed"
 "*beeeP"      P        d      e.      $**""    "
     "*b.     Jbc.     z*%e.. .$**eeeeP"
        "*beee* "$$eeed"  ^$$$""    "
                 '$$.     .$$$c
                  "$$.   e$$*$$c
                   "$$..$$P" '$$r
                    "$$$$"    "$$.           .d
        z.          .$$$"      "$$.        .dP"
        ^*e        e$$"         "$$.     .e$"
          *b.    .$$P"           "$$.   z$"
           "$c  e$$"              "$$.z$*"
            ^*e$$P"                "$$$"
              *$$                   "$$r
              '$$F                 .$$P
               $$$                z$$"
               4$$               d$$b.
               .$$%            .$$*"*$$e.
            e$$$*"            z$$"    "*$$e.
           4$$"              d$P"        "*$$e.
           $P              .d$$$c           "*$$e..
          d$"             z$$" *$b.            "*$L
         4$"             e$P"   "*$c            ^$$
         $"            .d$"       "$$.           ^$r
        dP            z$$"         ^*$e.          "b
       4$            e$P             "$$           "
                    J$F               $$
                    $$               .$F
                   4$"               $P"
                   $"               dP    

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		ThunderStrike-FrameWork
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'''

banner_3='''
              .,-:;//;:=,
          . :H@@@MM@M#H/.,+%;,
       ,/X+ +M@@M@MM%=,-%HMMM@X/,
     -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
    ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
  ,%MM@@MH ,@%=             .---=-=:=,.
  =@#@@@MX.,                -%HX$$%%%:;
 =-./@M@M$                   .;@MMMM@MM:
 X@/ -$MM/                    . +MM@@@M$
,@M@H: :@:   ThunderStrike    . =X#@@@@-
,@@@MMX, .     FrameWork      /H- ;@M@M=
.H@@@@M@+,                    %MM+..%#$.
 /MMMM@MMH/.                  XM@MH; =;
  /%+%$XHH@$=              , .H@@@@MX,
   .=--------.           -%H.,@@@@@MX,
   .%MM@@@HHHXX$$$%+- .:$MMX =M@@MM%.
     =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
       =%@M@M#@$-.=$@MM@@@M; %M%=
         ,:+$+-,/H#MMMMMMM@= =,
               =++%%%%+/:-.
'''

banner_4='''

  DATANET PROC RECORD:  45-3456-W-3452                         Transnet on/xc-3

                           FEDERAL RESERVE TRANSFER NODE
			      ThunderStrike-FrameWork
                               National Headquarters

        ************  Remote Systems Network Input Station  ************
        ================================================================

           [1] Interbank Funds Transfer  (Code Prog:  485-GWU)
           [2] International Telelink Access  (Code Lin:  XRP-262)
           [3] Remote Facsimile Send/Receive  (Code Tran:  2LZP-517)
           [4] Regional Bank Interconnect  (Security Code:  47-B34)
           [5] Update System Parameters  (Entry Auth. Req.)
           [6] Remote Operator Logon/Logoff 

        ================================================================ 

                        [ ] Select Option or ESC to Abort

'''

banner_5='''

LOGON: Help Logon

  HELP NOT AVAILABLE


  LOGON: Help Games

  'GAMES' REFERS TO MODELS, SIMULATIONS AND GAMES
  WHICH HAVE TACTICAL AND STRATEGIC APPLICATIONS.

  List of Games
  FALKEN'S MAZE
  BLACK JACK           .=======================.
  GIN RUMMY           |                         |
  HEARTS              | ThunderStrike-FrameWork |
  BRIDGE              |                         |
  CHECKERS             '======================='
  CHESS
  POKER
  FIGHTER COMBAT
  GUERRILLA ENGAGEMENT
  DESERT WARFARE
  AIR-TO-GROUND ACTIONS
  THEATERWIDE TACTICAL WARFARE
  THEATERWIDE BIOTOXIC AND CHEMICAL WARFARE

  GLOBAL THERMONUCLEAR WAR

  LOGON: JOSHUA

'''
banner_list=[banner_1,banner_2,banner_3,banner_4,banner_5]

print(choice(banner_list))
