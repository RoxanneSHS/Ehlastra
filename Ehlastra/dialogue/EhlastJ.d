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
=~Ha, you must have wondered already how I could have served his lust as a concubine...now you know.~
END
++~You will...we will use this strength against them, Ehlastra, you will have your revenge, trust me.~+ HasChanged2
++~A nice idea but it back fires. The strength you can gain and the weapon you use will make Yaga-Shura tremble.~+ HasChanged2

CHAIN
IF~~THEN EhlastJ HasChanged2
~Get your mouth shut and your feet moving. Deeds not words, <CHARNAME>.~
=~(There is a wicked grin visible for a second.) Now that I am my own master again I can change into that shape at will once a day. We can use this when needed.~
EXIT

CHAIN
IF~Global("HG_FaceMelSara","Global",2)~THEN EhlastJ KnowMel1
~That woman Melissan knew Yaga-Shura and she knows the Five. I have seen them together. Beware of her, she never appeared as their enemy, just the opposite.~
DO~SetGlobal("HG_FaceMelSara","Global",3)~
END
++~'A traitor in their midst'.~+ KnowMel2
++~You don't appear to me as the docile slave who cast her eyes down and was unable to observe well. If you say she may be in league with the Five I have no reason to doubt it.~ +  KnowMel3
++~It makes no sense what you say but it makes even less sense for you to invent it. I am warned.~ + KnowMel3

CHAIN
IF~~THEN EhlastJ KnowMel2
~What is the meaning of this?~
END
++~A mysterious warning I already heard. I'm not sure if it's the same person meant though.~+ KnowMel3
++~Oh, I was just thinking out loud. Nevermind.~+ KnowMel3

CHAIN
IF~~THEN EhlastJ KnowMel3
~There is little choice for us other than to do what she had proposed. Just be aware of the traps.~EXIT

CHAIN
IF~ Global("TalkofPast","Locals",1)~ THEN EhlastJ Northpast1
~You may want to know how a northern berserker woman ended up in Tethir. Or maybe not?~
DO~SetGlobal("TalkofPast","Locals",2) RealSetGlobalTimer("TalkofPastT","Locals",2900)~
END
++~It's always good to know who are the ones you travel with.~ + Northpast3
++~I'm not at all interested in silly stories about how fools end as captives in a dungeon.~ + Northpast2
++~You told me why you sought out Yaga-Shura. Why did you leave home in the first place?~ + Northpast3

CHAIN
IF~~THEN EhlastJ Northpast2
~Your loss, <PRO_GIRLBOY>. (You can see by her face expression that you will hear nothing about the subject again.)~EXIT

CHAIN
IF~~THEN EhlastJ Northpast3
~My tribe and its neighbour had been at war in my homeland near River Delimbyir for many years. I grew up with those battles and I was one of the herioines of our side aside from being the chieftain's daughter. It was a bloody and satisfying time but the elders grew tired - or wiser as they phrased it.~
=~Peace treaties were negotiated and one of those weak elders' wonderful ideas was that the contracts be sealed by a marriage between the one chieftain's son with the other one's daughter.~
END
++~I think I see where that leads us.~ + Northpast4
++~I heard enough to know that it doesn't interest me anymore.~ + Northpast2
++~The daughter involved probably was named Ehlastra.~ + Northpast4

CHAIN
IF~~THEN EhlastJ Northpast4
~I had once almost killed Bryon in a battle but his henchmen could carry the wounded chieftain's son from the battle and away from my final blow. I would not become the docile wife of a man I had bettered on the battlefield.~
END
++~Sometimes the pride of one counts less than the life of many.~ + Northpast5
++~Did they ask your opinion on the case.~ + Northpast5
IF~Gender(Player1,FEMALE)~THEN REPLY~I would never let myself be treated like this!~+ Northpast5
++~I heard enough to know that it doesn't interest me anymore.~ + Northpast2
++~Political marriages are not uncommon among the children of rulers.~ + Northpast5

CHAIN
IF~~THEN EhlastJ Northpast5
~Senile old men have no right to determine the lives of the young. They did not even dare to ask us. I bet he would not have wanted me any bit more than I did not want him.~
=~This was just a silly gesture, a symbol without meaning. What did it mean for peace that we two should waste our lives for it. If the peace were broken, which would have been my side then? And even in peace time, how would I live among that tribe of which I had killed so many be my own weapons?~
=~Enough for now. We may talk about my past another time again.~EXIT


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
==Sarmel01 IF~InParty("HGSLV01")~THEN~Oh, poor soul. You were a slave of the fire giant? That captivity has surely not done your mind good, poor one. I wish I could do something for you but the current situation requires our attention now~
==Sarmel01 IF~InParty("HGSLV01")~THEN~I need to discuss now with <CHARNAME>.~
END