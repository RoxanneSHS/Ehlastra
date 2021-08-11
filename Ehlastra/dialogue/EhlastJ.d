BEGIN EHLASTP

CHAIN
IF~!Global("AxeNotback","Locals",2)~ THEN Ehlastp Return2
@0
END
++@1 DO~JoinParty()~EXIT
IF~AreaCheck("AR4500")~THEN REPLY@2EXIT
IF~!AreaCheck("AR4500")GlobalLT("SanBeginRTF","GLOBAL",1)~THEN REPLY@3DO~MoveBetweenAreas("AR4500",[1720.1195],14)~ EXIT
IF~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN REPLY@4EXIT

CHAIN
IF~Global("AxeNotback","Locals",2)AreaCheck("AR5204")~THEN Ehlastp Return1
@5
DO~SetGlobal("AxeNotback","Locals",3)~
END
++@6 DO~JoinParty() SetGlobal("AxeNotback","Locals",3)~EXIT
++@7DO~EscapeArea()~EXIT

BEGIN EhlastJ

CHAIN
IF~Global("AxeIsback","Locals",1)~THEN EhlastJ Haveaxe1
@8
DO~SetGlobal("AxeIsback","Locals",2)~
END
++@9EXIT
++@10EXIT

CHAIN
IF~Global("AxeNotback","Locals",1)~THEN EhlastJ HaveNoaxe1
@11
DO~SetGlobal("AxeNotback","Locals",2)~
END
++@12+ HaveNoaxe3
++@13+ HaveNoaxe2
++@14+ HaveNoaxe2

CHAIN
IF~~THEN EhlastJ HaveNoaxe2
@15EXIT

CHAIN
IF~~THEN EhlastJ HaveNoaxe3
@16DO~LeaveParty() EscapeAreaMove("ar5204",1555,1501,10)~EXIT

CHAIN
IF~Global("GiantCanChange","Locals",1)~THEN EhlastJ HasChanged1
@17
DO~SetGlobal("GiantCanChange","Locals",2)~
=@18
END
++@19+ HasChanged2
++@20+ HasChanged2

CHAIN
IF~~THEN EhlastJ HasChanged2
@21
=@22
EXIT

CHAIN
IF~Global("HG_FaceMelSara","Global",2)~THEN EhlastJ KnowMel1
@23
DO~SetGlobal("HG_FaceMelSara","Global",3)~
END
++@24+ KnowMel2
++@25 +  KnowMel3
++@26 + KnowMel3

CHAIN
IF~~THEN EhlastJ KnowMel2
@27
END
++@28+ KnowMel3
++@29+ KnowMel3

CHAIN
IF~~THEN EhlastJ KnowMel3
@30EXIT

CHAIN
IF~ Global("TalkofPast","Locals",1)~ THEN EhlastJ Northpast1
@31
DO~SetGlobal("TalkofPast","Locals",2) RealSetGlobalTimer("TalkofPastT","Locals",2900)~
END
++@32 + Northpast3
++@33 + Northpast2
++@34 + Northpast3

CHAIN
IF~~THEN EhlastJ Northpast2
@35DO~SetGlobal("TalkofPast","Locals",49)~EXIT

CHAIN
IF~~THEN EhlastJ Northpast3
@36
=@37
END
++@38 + Northpast4
++@39 + Northpast2
++@40 + Northpast4

CHAIN
IF~~THEN EhlastJ Northpast4
@41
END
++@42 + Northpast5
++@43 + Northpast5
IF~Gender(Player1,FEMALE)~THEN REPLY@44+ Northpast5
++@39 + Northpast2
++@45 + Northpast5

CHAIN
IF~~THEN EhlastJ Northpast5
@46
=@47
=@48EXIT

CHAIN
IF~ Global("TalkofPast","Locals",3)~ THEN EhlastJ Northpast21
@49
DO~SetGlobal("TalkofPast","Locals",4) RealSetGlobalTimer("TalkofPastT","Locals",3200)~
END
++@32 + Northpast22
++@50 + Northpast2
++@51 + Northpast22

CHAIN
IF~~THEN EhlastJ Northpast22
@52
=@53
END
++@54+ Northpast23
IF~Gender(Player1,FEMALE)~THEN REPLY@55+ Northpast23
++@56+ Northpast23

CHAIN
IF~~THEN EhlastJ Northpast23
@57
END
IF~!InParty("Sarevok")~THEN REPLY@58+ Northpast24
IF~InParty("Sarevok")~THEN REPLY@58EXTERN Sarev25J Northpast25


CHAIN
IF~~THEN EhlastJ Northpast24
@59
END
++@60 + Northpast26

CHAIN
IF~~THEN Sarev25J Northpast25
@61
==EhlastJ@62
==Sarev25J@63
==EhlastJ@64
=@48EXIT

CHAIN
IF~~THEN EhlastJ Northpast26
@65
=@48EXIT

CHAIN
IF~Global("BanterStart","Locals",1)~ THEN EhlastJ Interiordeco
@66
DO~SetGlobal("BanterStart","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
END
++@67 + Interiordeco2
++@68+ Interiordeco2
++@69+ Interiordeco2

CHAIN
IF~~THEN EhlastJ Interiordeco2
@70
=@71EXIT

CHAIN
IF~Global("HG_FaceBalth","Global",2)~ THEN EhlastJ Baltmet1
@72
DO~SetGlobal("HG_FaceBalth","Global",3)~
END
++@73 + Baltmet2
++@74 + Baltmet2
++@75 + Baltmet2
++@76DO~SetGlobal("HG_FaceBalth","Global",63)~EXIT

CHAIN
IF~~THEN EhlastJ Baltmet2
@77
=@78
END
++@79 + Baltmet3
++@80 + Baltmet3

CHAIN
IF~~THEN EhlastJ Baltmet3
@81
END
++@82 + Baltmet4
++@83 + Baltmet4

CHAIN
IF~~THEN EhlastJ Baltmet4
@84EXIT

CHAIN
IF ~Global("TalkofPast","Locals",5)~THEN EhlastJ Inevi
@85
DO~SetGlobal("TalkofPast","Locals",6) ~
END
++ @86 + Inevi1
++ @87 + Inevi2
++ @88 + Inevi3
++ @89 + Inevi3
++ @90 + Inevi4

CHAIN
IF ~~THEN EhlastJ Inevi4
@91EXIT

CHAIN
IF ~~THEN EhlastJ Inevi1
@92
=@93
= @94
= @95
END
++ @96 + Inevi4
++ @97 + Inevi5
++ @98 + Inevi4
++ @99 + Inevi7

CHAIN
IF ~~THEN EhlastJ Inevi2
@100
=@93
= @94
= @95
END
++ @96 + Inevi4
++ @97 + Inevi5
++ @98 + Inevi4
++ @99 + Inevi7

CHAIN
IF ~~THEN EhlastJ Inevi3
@93
= @94
= @95
END
++ @96 + Inevi6
++ @97 + Inevi5
++ @98 + Inevi4
++ @99 + Inevi7

CHAIN
IF ~~THEN EhlastJ Inevi6
@101
=@102 EXIT

CHAIN
IF ~~THEN EhlastJ Inevi5
@103 
=@104 EXIT

CHAIN
IF ~~THEN EhlastJ Inevi7
@105
=@104 EXIT

CHAIN
IF~Global("HG_FaceBalth","Global",4)~THEN EhlastJ JoinBalth1
@106
DO~SetGlobal("HG_FaceBalth","Global",5)~
END
++@107+ JoinBalth3
++@108+ JoinBalth2
++@109+ JoinBalth3

CHAIN
IF~~THEN EhlastJ JoinBalth2
@110
END
++@111+ JoinBalth3

CHAIN
IF~~THEN EhlastJ JoinBalth3
@112
END
++@113 + JoinBalth4
++@114 + JoinBalth4
++@115 + JoinBalth6

CHAIN
IF~~THEN EhlastJ JoinBalth4
@116
END
++@117 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ + JoinBalth5
++@118+ JoinBalth5

CHAIN
IF~~THEN EhlastJ JoinBalth5
@119EXIT

CHAIN
IF~~THEN EhlastJ JoinBalth6
@120
=@121EXIT

CHAIN
IF~Global("HG_FaceBalth","Global",6)~ THEN EhlastJ Bonside1
@122
DO~SetGlobal("HG_FaceBalth","Global",7)~
END
++@123+ Bonside2
++@124 + Bonside2
++@125+ Bonside3

CHAIN
IF~~THEN EhlastJ Bonside2
@126EXIT

CHAIN
IF~~THEN EhlastJ Bonside3
@127
=@128EXIT

CHAIN
IF~Global("Ehlasex","Locals",1)~THEN EhlastJ SexM1
@129
=@130
DO~SetGlobal("Ehlasex","Locals",3)~
END
++@131 + SexM2
IF~Gender(Player1,FEMALE)~THEN REPLY@132 + SexF2
++@133+ SexM2

CHAIN
IF~~THEN EhlastJ SexF2
@134
END
++@135 + SexM2
++@136 + SexM2

CHAIN
IF~~THEN EhlastJ SexM2
@137
=@138
=@139DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()Wait(2) RestParty()~EXIT

CHAIN
IF~Global("EhImoen","Locals",1)~ THEN EhlastJ Imobanter
@140
DO~SetGlobal("EhImoen","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bimoen25@141
==EhlastJ@142
==Bimoen25@143
==EhlastJ@144
==Bimoen25@145
==EhlastJ@146
==Bimoen25@147EXIT

CHAIN
IF~Global("EhEdwin","Locals",1)~ THEN EhlastJ Edibanter
@148
DO~SetGlobal("EhEdwin","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bedwin25@149
==EhlastJ@150
==Bedwin25@151
==EhlastJ@152
==Bedwin25@153DO~RunAwayFrom("HGSLV01",40)~EXIT

CHAIN
IF~Global("EhSarevok","Locals",1)~ THEN EhlastJ Sarbanter
@154
DO~SetGlobal("EhSarevok","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bsarev25@155
==EhlastJ@156
==Bsarev25@157
==EhlastJ@158
==Bsarev25@159
==EhlastJ@160
==Bsarev25@161EXIT

CHAIN
IF~Global("EhDorn","Locals",1)~ THEN EhlastJ Dorbanter
@162
DO~SetGlobal("EhDorn","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bdorn25@163
==EhlastJ@164
==Bdorn25@165
==EhlastJ@166EXIT

CHAIN
IF ~InParty("HGSLV01")
See("HGSLV01")
InParty(Myself)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("HGSLV01",CD_STATE_NOTVALID)
Global("EhlaHexxat","Locals",0)~ THEN BHEXXA25 EhlaHexxat1
@167
DO ~SetGlobal("EhlaHexxat","Locals",1)~
== EhlastJ @168
== BHEXXA25 @169
== EhlastJ @170
== BHEXXA25 @171
== EhlastJ @172
EXIT

CHAIN
IF ~InParty("HGSLV01")
See("HGSLV01")
InParty(Myself)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("HGSLV01",CD_STATE_NOTVALID)
Global("EhlaNeeraToB","Locals",0)~ THEN BNEERA25 ehlNeeraToB1
@173
DO ~SetGlobal("EhlaNNeeraToB","Locals",1)~
== EhlastJ @174
== BNEERA25 @175
== EhlastJ @176
== BNEERA25 @177
== EhlastJ @178
== BNEERA25 @179
== EhlastJ @180
EXIT

CHAIN
IF ~InParty("HGSLV01")
See("HGSLV01")
InParty(Myself)
!StateCheck("HGSLV01",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("EhlaViconiaToB","Locals",0)~ THEN BVICON25 EhlViconiaToB
@181
DO ~SetGlobal("EhlaViconiaToB","Locals",1)~
== EhlastJ @182
== BVICON25 @183
== EhlastJ @184
== BVICON25 @185
== EhlastJ @186
== BVICON25 @187
EXIT