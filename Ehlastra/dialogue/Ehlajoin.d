ALTER_TRANS Yagcon BEGIN 20 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO join1~ END

ALTER_TRANS Yagcon BEGIN 21 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO join1~ END

APPEND Yagcon

IF~~THEN BEGIN join1
SAY~But wait! Now I see it clearly - you are a spawn of Bhaal like Yaga-Shura is one. You are the one he and his so-called friends are afraid of. You are the one who can spoil the plan of the Five still.~
IF~~THEN REPLY~They are five no longer, and soon they will be none.~ GOTO join2
IF~~THEN REPLY~You know more than you would have us guess at first, is that so?~GOTO join2
IF~~THEN REPLY~Does this mean we may become allies against them?~ GOTO join2
END

IF~~THEN BEGIN join2
SAY~My belongings are hidden around these halls. With my weapons back in hand you will find me a dedicated foe of the Five and their allies. I will be beside the one who triumphs. You will not regret to take me along, child of murder.~
IF~~THEN REPLY~My party is full but you can take your chance and find your weapons and meet me at the riverside outside of Saradush.~ GOTO join3
IF~~THEN REPLY~Your arguments and your dedication are compelling. Let's go and find your stuff.~DO~JoinParty()~EXIT
IF~~THEN REPLY~I see no point to take with me one so weak to get captured this way. ~DO~EscapeArea()~EXIT
END

IF~~THEN BEGIN join3
SAY~You are a fool to expect me to wait. I shall return to the North as the sulphur stench of these lands galls me! From there I will hear the tales of your downfall with pleasure. You will fall just like the Five will fall but I will live.~ 
IF~~THEN DO~EscapeArea()~EXIT
END
END