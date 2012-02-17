// creator  : aVENGER
// argument : SHOAL.DLG

ALTER_TRANS ~%TUTU_VAR%SHOAL~ BEGIN 3 END BEGIN 0 END BEGIN
"REPLY" ~#70151~ // Alright...
END

EXTEND_BOTTOM ~%TUTU_VAR%SHOAL~ 3 
IF ~~ THEN REPLY #33428 GOTO rr#shl01 // I said no and I mean it.
END

APPEND ~%TUTU_VAR%SHOAL~
IF ~~ THEN BEGIN rr#shl01
  SAY @2114 // So be it, then! I do not wish to fight you <RACE>, but I have little choice in the matter.
IF ~~ THEN DO ~Enemy()~ EXIT
END
END