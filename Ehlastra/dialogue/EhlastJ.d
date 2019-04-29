BEGIN EHLASTP

CHAIN
IF~!Global("AxeNotback","Locals",2)~ THEN Ehlastp Return2
~Has the mighty bhaalspawn made up <PRO_HISHER> mind. Be quick.~
END
++~Yes, come along with me and prove your worth.~ DO~JoinParty()~EXIT
IF~AreaCheck("AR4500")~THEN REPLY~I was just checking your mood. It seems to be grim as usual. Just wait here until I need you.~EXIT
IF~!AreaCheck("AR4500")~THEN REPLY~I need you to return to the pocket plane and wait for my return.~DO~MoveBetweenAreas("AR4500",[1720.1195],14)~ EXIT

CHAIN
IF~Global("AxeNotback","Locals",2)AreaCheck("AR5204")~THEN Ehlastp Return1
~I found my slasher, it is over there in the container. Let me take it and continue or mission.~
DO~SetGlobal("AxeNotback","Locals",3)~
END
++~You are stubborn, I must say. I hope it is worth it.~ DO~JoinParty() SetGlobal("AxeNotback","Locals",3)~EXIT
++~You are too stubborn for my taste. Do what you like, I do not care.~DO~EscapeArea()~EXIT

BEGIN EhlastJ

CHAIN
IF~Global("AxeIsback","Locals",1)~THEN EhlastJ Haveaxe1
~You have found my axe, <CHARNAME>. A fighter is only as effective as her weapons. Legions have fallen to my slasher and many will fall to it still.~
DO~SetGlobal("AxeIsback","Locals",2)~
END
++~I hope your deeds are as big as your words.~EXIT
++~Let's go and check the truth of that statement, we have enemies waiting amass.~EXIT

CHAIN
IF~Global("AxeNotback","Locals",1)~THEN EhlastJ HaveNoaxe1
~<CHARNAME>, a fighter is only as effective as her weapons. My axe to serve our goals is still in that lair behind us. Let's go find it. You won't regret your decision.~
DO~SetGlobal("AxeNotback","Locals",2)~
END
++~We already spent too much time in this oven. There will be other weapons for you.~+ HaveNoaxe3
++~Well, a fighter is only as effective as her weapons...let's check the truth of that statement.~+ HaveNoaxe2
++~I hope it's really worth it. I give you credit for it, don't disappoint me.~+ HaveNoaxe2

CHAIN
IF~~THEN EhlastJ HaveNoaxe2
~Thank you, child of Bhaal, you will not regret it. Legions have fallen to my slasher and many will fall to it still.~EXIT

CHAIN
IF~~THEN EhlastJ HaveNoaxe3
~I am worth little without my axe. Legions have fallen to my slasher and many will fall to it still. You are a useless leader not to see such simple facts. I will go and search it.~DO~LeaveParty() EscapeAreaMove("ar5204",1555,1501,10)~EXIT

CHAIN
IF~Global("GiantCanChange","Locals",1)~THEN EhlastJ HasChanged1
~You have witnessed what the crazy witch has done to me. Yes, this is her use of the eldest and blackest foul magic on me. It makes me become a perversion like her stupid boy, a fire giantess for his mating.~
DO~SetGlobal("GiantCanChange","Locals",2)~
=~Yes, you must have wondered already how I could have served his lust as a concubine...now you know.~
END
++~You will...we will use this strength against them, Ehlastra, you will have your revenge, trust me.~+ HasChanged2
++~A nice idea but it back fires. The strength you can gain and the weapon you use will make Yaga-Shura tremble.~+ HasChanged2

CHAIN
IF~~THEN EhlastJ HasChanged2
~Get your mouth shut and your feet moving. Deeds not words, <CHARNAME>.~
=~(There is a wicked grin visible for a second.) Now that I am my own master again I can change into that shape at will once a day. We can use this when needed.~
EXIT

INTERJECT HGNYA01 1  HG_FaceNyale1
==HGNYA01 IF~InParty("HGSLV01")~THEN~(A bony finger points at Ehlastra.) You go back to be pet for my boy, silly, you not be here with the other bhaalchild.~
==EhlastJ IF~InParty("HGSLV01")~THEN~You have any reason to fear me, Nyalee, Witch of the Glade. But I am free of the chains and I will use the dark power you worked on me against you and your boy now.~ DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==HGNYA01 IF~InParty("HGSLV01")~THEN~Listen not to her, powerful one.~
END HGNYA01 3

I_C_T2  HGNYA01 25 HG_FaceNyale2
==HGNYA01 IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN~(A bony finger points at Ehlastra.) You go back to be pet for my boy, silly, you not be here with the other bhaalchild.~
==EhlastJ IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN~You have any reason to fear me, Nyalee, Witch of the Glade. But I am free of the chains and I will use the dark power you worked on me against you and your boy now.~ DO~ReallyForceSpellRES("HG_CHAN","HGSLV01")~
==HGNYA01 IF~InParty("HGSLV01")Global("HG_FaceNyale1","Global",0)~THEN~Listen not to her, powerful one.~
END