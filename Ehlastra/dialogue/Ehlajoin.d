ALTER_TRANS Yagcon BEGIN 20 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO join1~ END

ALTER_TRANS Yagcon BEGIN 21 END BEGIN 0 END BEGIN "ACTION" ~~ "EPILOGUE" ~GOTO join1~ END

APPEND Yagcon

IF~~THEN BEGIN join1
SAY@0
IF~~THEN REPLY@1 GOTO join2
IF~~THEN REPLY@2GOTO join2
IF~~THEN REPLY@3 GOTO join2
END

IF~~THEN BEGIN join2
SAY@4
IF~~THEN REPLY@5 GOTO join3
IF~~THEN REPLY@6DO~JoinParty()~EXIT
IF~~THEN REPLY@7DO~EscapeArea()~EXIT
END

IF~~THEN BEGIN join3
SAY@8 
IF~~THEN DO~EscapeArea()~EXIT
END
END