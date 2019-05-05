BEGIN EHLASTP

CHAIN
IF~!Global("AxeNotback","Locals",2)~ THEN Ehlastp Return2
~Has the mighty bhaalspawn made up <PRO_HISHER> mind. Be quick.~
END
++~Yes, come along with me and prove your worth.~ DO~JoinParty()~EXIT
IF~AreaCheck("AR4500")~THEN REPLY~I was just checking your mood. It seems to be grim as usual. Just wait here until I need you.~EXIT
IF~!AreaCheck("AR4500")GlobalLT("SanBeginRTF","GLOBAL",1)~THEN REPLY~I need you to return to the pocket plane and wait for my return.~DO~MoveBetweenAreas("AR4500",[1720.1195],14)~ EXIT
IF~GlobalGT("SanBeginRTF","GLOBAL",1)~THEN REPLY~Ehlastra, good to see you alive. Just wait here until I need you.~EXIT

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
~Your loss, <PRO_GIRLBOY>. (You can see by her face expression that you will hear nothing about the subject again.)~DO~SetGlobal("TalkofPast","Locals",49)~EXIT

CHAIN
IF~~THEN EhlastJ Northpast3
~My tribe and its neighbour had been at war in my homeland near River Delimbyir for many years. I grew up with those battles and I was one of the heroines of our side aside from being the chieftain's daughter. It was a bloody and satisfying time but the elders grew tired - or wiser as they phrased it.~
=~Peace treaties were negotiated and one of those weak elders' wonderful ideas was that the contracts be sealed by a marriage between the one chieftain's son with the other one's daughter.~
END
++~I think I see where that leads us.~ + Northpast4
++~I heard enough to know that it doesn't interest me anymore.~ + Northpast2
++~The daughter involved probably was named Ehlastra.~ + Northpast4

CHAIN
IF~~THEN EhlastJ Northpast4
~I had once almost killed Bryon in a battle but his henchmen sheltered him with their shields and could carry the wounded chieftain's son from the field and away from my final blow. I would not become the docile wife of a man I had bettered on the battlefield.~
END
++~Sometimes the pride of one counts less than the life of many.~ + Northpast5
++~Did they ask your opinion on the case - or his?~ + Northpast5
IF~Gender(Player1,FEMALE)~THEN REPLY~I would never let myself be treated like this!~+ Northpast5
++~I heard enough to know that it doesn't interest me anymore.~ + Northpast2
++~Political marriages are not uncommon among the children of rulers.~ + Northpast5

CHAIN
IF~~THEN EhlastJ Northpast5
~Senile old men have no right to determine the lives of the young. They did not even dare to ask us. I bet he would not have wanted me any bit more than I did not want him.~
=~This was just a silly gesture, a symbol without meaning. What did it mean for peace that we two should waste our lives for it. If the peace were broken, which would have been my side then? And even in peace time, how would I live among that tribe of which I had killed so many with my own weapons?~
=~Enough for now. We may talk about my past another time again.~EXIT

CHAIN
IF~ Global("TalkofPast","Locals",3)~ THEN EhlastJ Northpast21
~You may want to hear more of my journey. Or maybe not?~
DO~SetGlobal("TalkofPast","Locals",4) RealSetGlobalTimer("TalkofPastT","Locals",3200)~
END
++~It's always good to know who are the ones you travel with.~ + Northpast22
++~I heard enough to know the rest. No need to hear more~ + Northpast2
++~You came to the point where a forced marriage was waiting for you. Obviously it didn't happen that way?~ + Northpast22

CHAIN
IF~~THEN EhlastJ Northpast22
~I confronted my father with my rejection and he tried to convince me that all was Tempus' will. I laughed at that farce because Tempus always prefers the able fighter to cooking housewife. It made no sense to fight with my father. I did not want war with my tribe. A fighter must know when a battle cannot be won. I left my village that night.~
=~The elders sent my older brother and Bryon on my trail to bring me back. They caught up with me at Loudwater, twenty men were with them. We did not fight, they knew that they would not win without paying a price nobody was willing to pay.~
END
++~I underestimated the intelligence of your northern people. They did well to let you go.~+ Northpast23
IF~Gender(Player1,FEMALE)~THEN REPLY~Typical males, they can't stomach a strong woman.~+ Northpast23
++~Would you really have killed your brother and brethren just to live a life away from everything you knew?~+ Northpast23

CHAIN
IF~~THEN EhlastJ Northpast23
~(She ignores your interjection.) I came to the Sword Coast and learned bits and pieces about the bhaalspawn story. And one day in the vicinity of Boareskyr Bridge and the Winding Water I met one of them near a former Bhaal temple which the Cyricists had taken over.~
END
IF~!InParty("Sarevok")~THEN REPLY~I bet I know who that was.~+ Northpast24
IF~InParty("Sarevok")~THEN REPLY~I bet I know who that was.~EXTERN Sarev25J Northpast25


CHAIN
IF~~THEN EhlastJ Northpast24
~Sarevok. You knew him?~
END
++~I killed him. Good for you that you were not with his entourage.~ + Northpast26

CHAIN
IF~~THEN Sarev25J Northpast25
~Yes, it was me. We were already under pressure then and did not trust a new face. Winski and Tamoko warned me. <CHARNAME> had already crossed my plans several times.~
==EhlastJ~I learned about <CHARNAME> afterwards when <PRO_HESHE> had become the saviour of Baldur's Gate. But I had reached Tethir already by then.~
==Sarev25J~A fighter like Ehlastra by our side might have made the difference between you and me back then, <CHARNAME>.~
==EhlastJ~It may make the difference against the Five now, Sarevok.~
=~Enough for now. We may talk about my past another time again.~EXIT

CHAIN
IF~~THEN EhlastJ Northpast26
~His advisors did not trust me, a mage named Winski and a priestess Tamoko. Sarevok was nervous because someone he called Gorion's Ward had crossed his plans several times.~
=~Enough for now. We may talk about my past another time again.~EXIT

CHAIN
IF~Global("BanterStart","Locals",1)~ THEN EhlastJ Interiordeco
~Ha, your blood relationship to Yaga-Shura shows clearly!~
DO~SetGlobal("BanterStart","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
END
++~What?~ + Interiordeco2
++~Ha, I guess you mean that as a joke.~+ Interiordeco2
++~Bhaalspawns can't really be regarded as siblings.~+ Interiordeco2

CHAIN
IF~~THEN EhlastJ Interiordeco2
~You share the same bad taste in interior design. And you overheat your quarters, that is not to the liking of one who was born in the north.~
=~(The ghost of a smile rushes over her lips.)~EXIT

CHAIN
IF~Global("HG_FaceBalth","Global",2)~ THEN EhlastJ Baltmet1
~He has not changed. He is like a wall of silence.~
DO~SetGlobal("HG_FaceBalth","Global",3)~
END
++~What is your relation to him?~ + Baltmet2
++~How come you know him?~ + Baltmet2
++~Is there anyone involved here whom you don't know already?~ + Baltmet2
++~I wish you were as well.~DO~SetGlobal("HG_FaceBalth","Global",63)~EXIT

CHAIN
IF~~THEN EhlastJ Baltmet2
~He was my first choice when I came to Tethir but I erred. Despite all his power it seems that he is somehow different from all of you.~
=~When I offered my services to help him in the struggle for power he almost threw me out. He said he was not after the "stain" but fighting it.~
END
++~Do you imply that he is another bhaalspawn?~ + Baltmet3
++~You erred when you suspected him to be a bhaalspawn?~ + Baltmet3

CHAIN
IF~~THEN EhlastJ Baltmet3
~(For a moment she seems baffled.) Oh, he belongs to the Five of course. I thought that was clear. Anyway, it looks to me that he somehow does not share the same belief as the others. And he does not trust Melissan.~
END
++~That mistrust for the lady is something we have in common.~ + Baltmet4
++~Any other insight that you can share about him?~ + Baltmet4

CHAIN
IF~~THEN EhlastJ Baltmet4
~I never had the chance to get closer to him than that. He was mostly silent when the Five and Melissan were meeting. From the little outburst he had when we first met I conclude that he fights against his heritage and doubts his destiny. This will make him a weak opponent in the end. Good for you, <CHARNAME>.~EXIT

CHAIN
IF ~Global("TalkofPast","Locals",5)~THEN EhlastJ Inevi
~We are to face demigods together. Maybe you are one yourself already. Have you ever wanted this, <CHARNAME>?~
DO~SetGlobal("TalkofPast","Locals",6) ~
END
++ ~I start to enjoy it. It means my victory - and my ascension.~ + Inevi1
++ ~It has to be endured because after this, I'll be free.~ + Inevi2
++ ~No. I feel like a pawn in somebod's game.~ + Inevi3
++ ~It was inevitable. Alaundo predicted these events, you know.~ + Inevi3
++ ~Let's talk later.~ + Inevi4

CHAIN
IF ~~THEN EhlastJ Inevi4
~As you wish.~EXIT

CHAIN
IF ~~THEN EhlastJ Inevi1
~You may dream of power, but I would not ne so sure. It seems like that Solar's in power, not you.~
=~It leaves me uncomfortable. We are played like figures on a chess board, moved at this Solar's whim or Melissan's.~
= ~I prayed to Tempus, but as long as blood is shed, the Lord of Battles is content.~
= ~Ha, I like to dig my nails deep into Melissan's lying face, if I could. That bitch! Let her fight her own wars and leave us alone. If you wanted to fight your siblings, you should be making the rules for it.~
END
++ ~I wouldn't know about them, Ehlastra. She at least brings some focus into the game.~ + Inevi4
++ ~She's actually helping me. She does all the spying and tricksing for me.~ + Inevi5
++ ~I don't like her, either. Too arrogant for my taste.~ + Inevi4
++ ~Maybe she's not that unkillable...~ + Inevi7

CHAIN
IF ~~THEN EhlastJ Inevi2
~Or dead. That happens a lot during wars, too. It may be considered free in its own final way.~
=~It leaves me uncomfortable. We are played like figures on a chess board, moved at this Solar's whim or Melissan's.~
= ~I prayed to Tempus, but as long as blood is shed, the Lord of Battles is content.~
= ~Ha, I like to dig my nails deep into Melissan's lying face, if I could. That bitch! Let her fight her own wars and leave us alone. If you wanted to fight your siblings, you should be making the rules for it.~
END
++ ~I wouldn't know about them, Ehlastra. She at least brings some focus into the game.~ + Inevi4
++ ~She's actually helping me. She does all the spying and tricksing for me.~ + Inevi5
++ ~I don't like her, either. Too arrogant for my taste.~ + Inevi4
++ ~Maybe she's not that unkillable...~ + Inevi7

CHAIN
IF ~~THEN EhlastJ Inevi3
~It leaves me uncomfortable. We are played like figures on a chess board, moved at this Solar's whim or Melissan's.~
= ~I prayed to Tempus, but as long as blood is shed, the Lord of Battles is content.~
= ~Ha, I like to dig my nails deep into Melissan's lying face, if I could. That bitch! Let her fight her own wars and leave us alone. If you wanted to fight your siblings, you should be making the rules for it.~
END
++ ~I wouldn't know about them, Ehlastra. She at least brings some focus into the game.~ + Inevi6
++ ~She's actually helping me. She does all the spying and tricksing for me.~ + Inevi5
++ ~I don't like her, either. Too arrogant for my taste.~ + Inevi4
++ ~Maybe she's not that unkillable...~ + Inevi7

CHAIN
IF ~~THEN EhlastJ Inevi6
~True and yet this manipulator annoys me to no end.~
=~Somehow I feel it was good to end up being with you. Walking, laughing, and even complaining. I feel like together we will be victorious and come out heroes from this whole mess.~ EXIT

CHAIN
IF ~~THEN EhlastJ Inevi5
~To advance her own goals, or not? She may have her own interest in you or your failure.~ 
=~Somehow I feel it was good end up being with you. Walking, laughing, and even complaining. I feel like together we will be victorious and come out heroes from this whole mess.~ EXIT

CHAIN
IF ~~THEN EhlastJ Inevi7
~Ha! I like the way you think.~
=~Somehow I feel it was good end up being with you. Walking, laughing, and even complaining. I feel like together we will be victorious and come out heroes from this whole mess.~ EXIT

CHAIN
IF~Global("HG_FaceBalth","Global",4)~THEN EhlastJ JoinBalth1
~I have recently been thinking about Balthazar again.~
DO~SetGlobal("HG_FaceBalth","Global",5)~
END
++~Any insight into the world of the Five would be welcome, Ehlastra.~+ JoinBalth3
++~You-have-been-"thinking"...woman...~+ JoinBalth2
++~You issued some suspicion about his intentions already.~+ JoinBalth3

CHAIN
IF~~THEN EhlastJ JoinBalth2
~(slap)~
END
++~Ouch!~+ JoinBalth3

CHAIN
IF~~THEN EhlastJ JoinBalth3
~What if there were other ways to solve the whole bhaalwar than those some ancient dusty prophesy seems to dictate? What if he found an alternative?~
END
++~An interesting idea. ~ + JoinBalth4
++~He may be closer to me in this case than I thought.~ + JoinBalth4
++~There will be a winner in this - by the way, it will be me - who will claim <PRO_HISHER> birthright.~ + JoinBalth6

CHAIN
IF~~THEN EhlastJ JoinBalth4
~The chance to prevent the God of Murder from returning may just be as glorious and heroic as to take his portfolio.~
END
++~Would you stand by my side, Ehlastra, if just that would be my own intention?~ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ + JoinBalth5
++~I am afraid my only way to survive all of this is to fulfil the prophesy. Will you stand by me, Ehlastra.~+ JoinBalth5

CHAIN
IF~~THEN EhlastJ JoinBalth5
~Yes, I will.~EXIT

CHAIN
IF~~THEN EhlastJ JoinBalth6
~You make it sound like you accept your role to be nothing but a puppet on a string. I had thought of you as stronger in character. Be this as it may.~
=~Let us move on.~EXIT

CHAIN
IF~Global("Ehlasex","Locals",1)~THEN EhlastJ SexM1
~I am confident that we will succeed. The victory of this bhaalwar will be ours.~
=~(Her voice is unmistakably lascivious.) I have a need tonight to assure the bond between us that will make us strong enough. I need you.~
DO~SetGlobal("Ehlasex","Locals",3)~
END
++~I'm not sure I'm too happy with that proposal.~ + SexM2
IF~Gender(Player1,FEMALE)~THEN REPLY~I have never expected that you would propose such a thing to a woman...~ + SexF2
++~You are late but not too late, Ehlastra.~+ SexM2

CHAIN
IF~~THEN EhlastJ SexF2
~I never did, be assured, <CHARNAME>, but I have never been in such a turmoil of joy, admiration and terror before. This is different from everything you and I have ever experienced.~
END
++~So you*re not one of those...~ + SexM2
++~I wouldn't have minded if you loved women, that's no problem with me.~ + SexM2

CHAIN
IF~~THEN EhlastJ SexM2
~Hush. You worry too much. I will not make demands or promises. This is not about undying love or flowery romance, this is giving Tempus his share.~
=~We will gain the strength for the battle to come by letting our bodies unite.~
=~(Her kiss cuts a possible protest and her berserker strength is irresistible anyway.)~DO~StartCutSceneMode() Wait(2) FadeToColor([30.0],0) Wait(4) FadeFromColor([30.0],0) Wait(2) EndCutSceneMode()Wait(2) RestParty()~EXIT

CHAIN
IF~Global("EhImoen","Locals",1)~ THEN EhlastJ Imobanter
~You are <CHARNAME>'s oldest friend, right?~
DO~SetGlobal("EhImoen","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bimoen25~Then you'd be <PRO_HISHER> latest acquisition, right.~
==EhlastJ~Acquisition? I was once trapped to become a trophy but I rarely make mistakes twice.~
==Bimoen25~Got your point, Ehlastra. You northern women have a weakness to be trapped by evil southern men, kinda reminds me of Branwen back then.~
==EhlastJ~Branwen of Norheim? You have met her?~
==Bimoen25~Yeah, some mage turned her into a stone statue and exposed her at carnivals and fairs. I had to rescue her and make her flesh again.~
==EhlastJ~You?~
==Bimoen25~With a little help from my friends...~EXIT

CHAIN
IF~Global("EhEdwin","Locals",1)~ THEN EhlastJ Edibanter
~Where is Thay?~
DO~SetGlobal("EhEdwin","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bedwin25~At the very centre of the multiverse, as every simian would know.~
==EhlastJ~I see. It must be very small then to fit between the lands of the Elk tribe babarians and the realms of the goblins in the Evermoors. All of them claim to be at the centre of the multiverse. Not to forget all the egomaniacs who think of themselves as our masters.~
==Bedwin25~Did your master even allow you to talk to a superior like me?~
==EhlastJ~<PRO_HESHE> obviously forgot. <PRO_HESHE> as well forgot to order me not to use my berserker rage against red-robed imposters.~
==Bedwin25~Bark at the moon, wolf child.~DO~RunAwayFrom("HGSLV01",40)~EXIT

CHAIN
IF~Global("EhSarevok","Locals",1)~ THEN EhlastJ Sarbanter
~Will it be our luck or a missed chance that you refused my company back on the Sword Coast?~
DO~SetGlobal("EhSarevok","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bsarev25~While someone like you might have made a change in my first confrontation with <CHARNAME> I have my doubts when I see what we are really up against today.~
==EhlastJ~You mean that you underestimated the bhaalsspawns that fight for the Throne.~
==Bsarev25~I studied my subject thoroughly. I admit that Gorion's Ward was the most powerful I encountered in reality. Those like the Five have grown very fast.~
==EhlastJ~So has <CHARNAME>, am I right? Now <PRO_HESHE> is much more than the one who defeated you. Imagine that you might have grown in a similar way if you had been given the chance.~
==Bsarev25~Let's not waste our breath on such speculations. To answer your initial question I'd say that a missed chance may turn out to be our luck in the long run.~
==EhlastJ~You agree with me that we need to motivate <CHARNAME> to accept the challenge?~
==Bsarev25~Of course. When <PRO_HESHE> claims <PRO_HISHER> heritage we will rise with <PRO_HIMHER>, so much is sure.~EXIT

CHAIN
IF~Global("EhDorn","Locals",1)~ THEN EhlastJ Dorbanter
~You are a slave to your bloodlust with an insatiable urge to kill. Do you not sometimes feel the need for something else?~
DO~SetGlobal("EhDorn","Locals",2) RealSetGlobalTimer("BanterstartTimer","Locals",1800)~
==Bdorn25~I'm sure <CHARNAME> will give us ample opportunity to shed blood by the bucketful. I can see that the thought of it makes you breathe harder in anticipation of the joy.~
==EhlastJ~Tempus guides me. Bloodshed is one thing that gets me excited but not the only thing.~
==Bdorn25~Northern women choose their mates from the winners. My patron affords me more power than you will ever consume, Ehlastra.~
==EhlastJ~I heard bigger promises from lesser men, Dorn. I see potential in you.~EXIT

CHAIN
IF ~InParty("HGSLV01")
See("HGSLV01")
InParty(Myself)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("HGSLV01",CD_STATE_NOTVALID)
Global("EhlaHexxat","Locals",0)~ THEN BHEXXA25 EhlaHexxat1
~All silence? I thought you'd be more tolerant towards me, Ehlastra.~
DO ~SetGlobal("EhlaHexxat","Locals",1)~
== EhlastJ ~I destroyed every undead I met. Letting you alive IS tolerant but you owe it to <CHARNAME> not to your own ways. I trust <PRO_HIMHER> in the choice of companions.~
== BHEXXA25 ~Too bad. You could learn so much from my centuries of experience.~
== EhlastJ ~One experience I really enjoy is when I drive a stake through a vampire's heart and the flesh turns to dust and dissolves.~
== BHEXXA25 ~You're disgusting.~
== EhlastJ ~You are welcome.~
EXIT

CHAIN
IF ~InParty("HGSLV01")
See("HGSLV01")
InParty(Myself)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("HGSLV01",CD_STATE_NOTVALID)
Global("EhlaNeeraToB","Locals",0)~ THEN BNEERA25 ehlNeeraToB1
~I'm bored.~
DO ~SetGlobal("EhlaNNeeraToB","Locals",1)~
== EhlastJ ~By the icicles of Auril, how come? A bhaalspawn war is raging in Tethir and the multiverse is trying to kill us - how boring.~
== BNEERA25 ~Aren't you northerners supposed to respect old prophecies and cryptic messengers?~
== EhlastJ ~Not when it is my own and my friends' lives on the stake, Neera. In the current case I see a good chance that it may be us who finally write the definite version of this prophecy.~
== BNEERA25 ~You believe we have the power to do that?~
== EhlastJ ~You summon your wild spells, I throw my axe, and we teach that Solar an that Lady Melissan a lesson.~
== BNEERA25 ~I like the way you think. That not-being-pawn-in-a-game drift of it.~
== EhlastJ ~I was slave for a while. It will not happen again.~
EXIT

CHAIN
IF ~InParty("HGSLV01")
See("HGSLV01")
InParty(Myself)
!StateCheck("HGSLV01",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("EhlaViconiaToB","Locals",0)~ THEN BVICON25 EhlViconiaToB
~I considered you weak because you were slave to a male. I have come to change my mind by now.~
DO ~SetGlobal("EhlaNViconiaToB","Locals",1)~
== EhlastJ ~I have been waiting for that moment eagerly, drow. Your opinion is utterly important to me, thank you for sharing it.~
== BVICON25 ~I have been long enough on the damned surface to know this tone. Irony, the verbal weapon of the weak.~
== EhlastJ ~Weak...strong, you change your mind faster than a male.~
== BVICON25 ~You have your worth in battle but none in conversation.~
== EhlastJ ~Let us talk about axes and swords. In case you know anything about them. Males are beyond your horizon, drow.~
== BVICON25 ~Fine. How about poisoned weapons. Tongues come to my mind.~
EXIT