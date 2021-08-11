INTERJECT HGNYA01 1  HG_FaceNyale1
==HGNYA01 IF~InParty("HGSLV01")~THEN@0DO~SetGlobal("TalkedToNyalee","GLOBAL",1)~
==EhlastJ IF~InParty("HGSLV01")~THEN@1 DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==HGNYA01 IF~InParty("HGSLV01")~THEN@2
END HGNYA01 3

I_C_T  HGNYA01 25 HG_FaceNyale2
==HGNYA01 IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN@0
==EhlastJ IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN@1 DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==HGNYA01 IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN@2
END

I_C_T Yaga01 2 HG_FaceYaga
==Yaga01 IF~InParty("HGSLV01")~THEN@3
==EhlastJ IF~InParty("HGSLV01")~THEN@4
==EhlastJ IF~InParty("HGSLV01")~THEN@5DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==Yaga01 IF~InParty("HGSLV01")~THEN@6
END

I_C_T Sarmel01 64 HG_FaceMelSara
==EhlastJ IF~InParty("HGSLV01")~THEN@7
==Sarmel01 IF~InParty("HGSLV01")~THEN@8
==EhlastJ IF~InParty("HGSLV01")~THEN@9
==Sarmel01 IF~InParty("HGSLV01")~THEN@10
==Sarmel01 IF~InParty("HGSLV01")~THEN@11
END

I_C_T Balth 1 HG_FaceBalth
==EhlastJ IF~InParty("HGSLV01")~THEN@12
==Balth IF~InParty("HGSLV01")~THEN@13
==EhlastJ IF~InParty("HGSLV01")~THEN@14
==Balth IF~InParty("HGSLV01")~THEN@15DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~
==EhlastJ IF~InParty("HGSLV01")~THEN@16
END

I_C_T Balth 17 HG_ConvinceBalth
==EhlastJ IF~InParty("HGSLV01")~THEN@17DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~
==Balth IF~InParty("HGSLV01")~THEN@18
==EhlastJ IF~InParty("HGSLV01")~THEN@19
END

INTERJECT Bazmonk 14 HG_FaceAbiMonk
==EhlastJ IF~InParty("HGSLV01")~THEN@20
==Bazmonk IF~InParty("HGSLV01")~THEN@21
==EhlastJ IF~InParty("HGSLV01")~THEN@22
END 
++@23 +3
++@24 +3

EXTEND_TOP SARVOLO 9
+ ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID) ~ + @25 + VoloBio
END

CHAIN 
IF~~THEN SARVOLO VoloBio
@26
== EhlastJ IF ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID)~ THEN @27
== Sarvolo IF ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID)~ THEN @28
== EhlastJ IF ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID)~ THEN @29EXTERN SARVOLO 9

I_C_T Hgwra01 18 GoriWraith
==EhlastJ IF~InParty("HGSLV01")!InParty("RChloe")~THEN@30
==EhlastJ IF~InParty("HGSLV01")InParty("RChloe")~THEN@31
==HGwra01 IF~InParty("HGSLV01")~THEN@32
==EhlastJ IF~InParty("HGSLV01")~THEN@33
END
