I_C_T Balth 1113 HG_BalthLater
==EhlastJ IF~InParty("HGSLV01")~THEN@0
==Balth IF~InParty("HGSLV01")~THEN@1
==EhlastJ IF~InParty("HGSLV01")~THEN@2
==Balth IF~InParty("HGSLV01")~THEN@3
==EhlastJ IF~InParty("HGSLV01")~THEN@4
==Balth IF~InParty("HGSLV01")~THEN@5
==Balth IF~InParty("HGSLV01")~THEN@6
==EhlastJ IF~InParty("HGSLV01")~THEN@7
END

CHAIN
IF~Global("HG_BalthLater","Global",2)~ THEN EhlastJ Retreat1
@8
DO~SetGlobal("HG_BalthLater","Global",3) ~
END
++@9 + Retreat2
++@10 + Retreat2
++@11+ Retreat2

CHAIN
IF~~ THEN EhlastJ  Retreat2
@12EXIT