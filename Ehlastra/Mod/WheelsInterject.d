I_C_T Balth 1113 HG_BalthLater
==EhlastJ IF~InParty("HGSLV01")~THEN~<CHARNAME>, Balthazar, this is not the day for battle between the two of you.~
==Balth IF~InParty("HGSLV01")~THEN~What do you know of any of this, Ehlastra?~
==EhlastJ IF~InParty("HGSLV01")~THEN~Maybe as much as any of you but maybe I see clearer because my blood is not involved. Do not dance to the tune that someone else plays.~
==Balth IF~InParty("HGSLV01")~THEN~You know the inevitable, woman. You know of my heritage and I can assume you told <CHARNAME> of it. Yes, I am Bhaal's child, too. There is no way that we can avoid what was written. If not today than another day.~
==EhlastJ IF~InParty("HGSLV01")~THEN~Consider what may happen if you both discover you have the same intention. What if the enemy is not among yourself but a common one you may face together.~
==Balth IF~InParty("HGSLV01")~THEN~May there really be such a chance? May there lie such a chance in <CHARNAME>? I may be willing to risk it.~
==Balth IF~InParty("HGSLV01")~THEN~Now, I offer again: leave, continue your quest against Sendai and Abazigal, and there need be no conflict today between us.~
==EhlastJ IF~InParty("HGSLV01")~THEN~Take that offer, <CHARNAME>, let us get rid of the truly evil spawns. Then consult again with Balthazar about the "Lady" Melissan.~
END

CHAIN
IF~Global("HG_BalthLater","Global",2)~ THEN EhlastJ Retreat1
~I am glad your reason mastered your curiosity. I follow the right bhaalspawn, today you have assured me of this, <CHARNAME>.~
DO~SetGlobal("HG_BalthLater","Global",3) ~
END
++~I hope you are right and I did not miss a chance that may not return.~ + Retreat2
++~Balthazar better has some good arguments next time we meet.~ + Retreat2
++~I made my own decision, it had nothing to do with you.~+ Retreat2

CHAIN
IF~~ THEN EhlastJ  Retreat2
~We should not waste more time. Both, Abazigal and Sendai, get stronger just as we talk.~EXIT