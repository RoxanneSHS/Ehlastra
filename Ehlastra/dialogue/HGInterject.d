INTERJECT HGNYA01 1  HG_FaceNyale1
==HGNYA01 IF~InParty("HGSLV01")~THEN~(A bony finger points at Ehlastra.) You go back to be pet for my boy, silly, you not be here with the other bhaalchild.~DO~SetGlobal("TalkedToNyalee","GLOBAL",1)~
==EhlastJ IF~InParty("HGSLV01")~THEN~You have any reason to fear me, Nyalee, Witch of the Glade. But I am free of the chains and I will use the dark power you worked on me against you and your boy now.~ DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==HGNYA01 IF~InParty("HGSLV01")~THEN~Listen not to her, powerful one.~
END HGNYA01 3

I_C_T2  HGNYA01 25 HG_FaceNyale2
==HGNYA01 IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN~(A bony finger points at Ehlastra.) You go back to be pet for my boy, silly, you not be here with the other bhaalchild.~
==EhlastJ IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN~You have any reason to fear me, Nyalee, Witch of the Glade. But I am free of the chains and I will use the dark power you worked on me against you and your boy now.~ DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==HGNYA01 IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN~Listen not to her, powerful one.~
END

I_C_T Yaga01 2 HG_FaceYaga
==Yaga01 IF~InParty("HGSLV01")~THEN~YOU, go back to your chain, slave Ehlastra, you and I are not finished yet. You're there to breed Yaga-Shura's prodigy.~
==EhlastJ IF~InParty("HGSLV01")~THEN~Dumb boy. There will be no little big kiddies from your loins. You are facing your betters today.~
==EhlastJ IF~InParty("HGSLV01")~THEN~Ha, <CHARNAME>, did I ever tell you why my fire giantess transformation only lasts 90 seconds. That is how long that oversized wind bag can hold up his manhood.~
==Yaga01 IF~InParty("HGSLV01")~THEN~So it's that <CHARNAME> stole you and you now fall with <PRO_HIMHER>. We see to that.~
END

I_C_T Sarmel01 64 HG_FaceMelSara
==EhlastJ IF~InParty("HGSLV01")~THEN~But you claimed to be friends with the bastard you now want to see rot, lady.~
==Sarmel01 IF~InParty("HGSLV01")~THEN~Who might you be? Why do you claim such a thing?~
==EhlastJ IF~InParty("HGSLV01")~THEN~The chained slave in Yaga-Shura's lair might not have been important enough to notice when you and your friends had your meetings of the Five...~
==Sarmel01 IF~InParty("HGSLV01")~THEN~Oh, poor soul. You were a slave of the fire giant? That captivity has surely not done your mind good, poor one. I wish I could do something for you but the current situation requires our attention now.~
==Sarmel01 IF~InParty("HGSLV01")~THEN~I need to discuss now with <CHARNAME>.~
END

I_C_T Balth 1 HG_FaceBalth
==EhlastJ IF~InParty("HGSLV01")~THEN~And so we meet again, Balthazar.~
==Balth IF~InParty("HGSLV01")~THEN~And again in the company of a child of Bhaal.~
==EhlastJ IF~InParty("HGSLV01")~THEN~Company it is in deed this time. It was slavery with Yaga-Shura but he is dead now and I am free.~
==Balth IF~InParty("HGSLV01")~THEN~If you think I feel guilty for it, Ehlastra, you are wrong.~
==EhlastJ IF~InParty("HGSLV01")~THEN~You could not know what would happen when you sent me away. Anyway, where is Melissan?~
END

//Volo

EXTEND_TOP SARVOLO 9
+ ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID) ~ + ~What news do you have about a northerner named Ehlastra?~ + VoloBio
END

CHAIN 
IF~~THEN SARVOLO VoloBio
~You mean the battered blonde with the shining eyes standing right next to you?~
== EhlastJ IF ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID)~ THEN ~We never met, bard, how do you know it is me?~
== Sarvolo IF ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID)~ THEN ~A woman of such interesting past and equally interesting destiny cannot escape the chronicler, and the description given can hardly be mistaken when one faces the original. Just like our bhaalspawn here, you left your origin far behind you, much farther than you think. And your future will be with a big one even if not in statue.~
== EhlastJ IF ~InParty("HGSLV01") InMyArea("HGSLV01") !StateCheck("HGSLV01",CD_STATE_NOTVALID)~ THEN ~If that is true, I am content and need not hear more. I would rather live my life than to follow some already written story.~EXTERN SARVOLO 9

I_C_T Hgwra01 18 GoriWraith
==EhlastJ IF~InParty("HGSLV01")!InParty("RChloe")~THEN~I can see little of that *father* Gorion you told me so much about in this creature, <CHARNAME>.~
==EhlastJ IF~InParty("HGSLV01")InParty("RChloe")~THEN~A comedy in the swamp, who would expect such a spectacle.~
==HGwra01 IF~InParty("HGSLV01")~THEN~Dare not speak, twice runaway slave who will never escape.~
==EhlastJ IF~InParty("HGSLV01")~THEN~We have creatures like that in my northern homeland, <CHARNAME>. Wraith, we need no further proof that you are anyone but Gorion.~
END
