
//Windspear
ALTER_TRANS firkra02 BEGIN 34 END BEGIN 0 END BEGIN ACTION //todo: use something less destructive than ALTER_TRANS
~GiveItem("clck20",LastTalkedToBy)
TakePartyItem("misc9l")
AddXPObject(Player1,44500)
AddXPObject(Player2,44500)
AddXPObject(Player3,44500)
AddXPObject(Player4,44500)
AddXPObject(Player5,44500)
AddXPObject(Player6,44500)
SetGlobal("FirkraagDeal","GLOBAL",0)
EraseJournalEntry(49476)
EraseJournalEntry(49465)~
END

//Trademeet
REPLACE_TRANS_ACTION trevil01 BEGIN 39 END BEGIN 0 END
~GiveGoldForce(1000)~ ~GiveGoldForce(3000)~

//todo: need to replace the Shield, since you also get it from Busya

ADD_TRANS_ACTION trevil01 BEGIN 39 END BEGIN 0 END
~AddXPObject(Player1,42500) //todo: probably lower these a bit; or look into the total reward for the good path (possible accumulation)
AddXPObject(Player2,42500)
AddXPObject(Player3,42500)
AddXPObject(Player4,42500)
AddXPObject(Player5,42500)
AddXPObject(Player6,42500)~


//Inspector Aegisfield, turning Cragmoon in
ADD_TRANS_ACTION inspect BEGIN 19 END BEGIN 0 END
~AddexperienceParty(10000)~


//Welther, ransoming back Elgea
ADD_TRANS_ACTION welther BEGIN 1 END BEGIN 0 1 END
~AddexperienceParty(15000)~


//Copper Coronet
ADD_TRANS_ACTION lehtin BEGIN 23 24 END BEGIN 0 END
~AddXPObject(Player1,25750)
AddXPObject(Player2,25750)
AddXPObject(Player3,25750)
AddXPObject(Player4,25750)
AddXPObject(Player5,25750)
AddXPObject(Player6,25750)~


//Chapter 3
ALTER_TRANS bodhi BEGIN 22 END BEGIN 0 1 2 END BEGIN ACTION //todo: use something less destructive than ALTER_TRANS
~AddXPObject(Player1,45000)
AddXPObject(Player2,45000)
AddXPObject(Player3,45000)
AddXPObject(Player4,45000)
AddXPObject(Player5,45000)
AddXPObject(Player6,45000)
TakePartyGold(15000)~
END


//Ust Natha
//Lesser Demon Lord
ALTER_TRANS uddemon BEGIN 7 END BEGIN 9 END BEGIN ACTION
~AddXPObject(Player1,99500)
AddXPObject(Player2,99500)
AddXPObject(Player3,99500)
AddXPObject(Player4,99500)
AddXPObject(Player5,99500)
AddXPObject(Player6,99500)~
END

ALTER_TRANS uddemon BEGIN 20 END BEGIN 0 END BEGIN ACTION
~AddXPObject(Player1,99500)
AddXPObject(Player2,99500)
AddXPObject(Player3,99500)
AddXPObject(Player4,99500)
AddXPObject(Player5,99500)
AddXPObject(Player6,99500)~
END

ALTER_TRANS uddemon BEGIN 8 END BEGIN 1 END BEGIN
"TRIGGER" ~False()~
END

EXTEND_TOP uddemon 8 #1 
IF ~~ REPLY #52147 DO ~TakePartyItem("misc9t") SetGlobal("EggsDie","GLOBAL",1) GiveGoldForce(20000)~ GOTO 11
END

ADD_TRANS_ACTION uddemon BEGIN 7 END BEGIN 10 11 END
~AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)~

//Adalon's imp
BEGIN fl#udimp
IF WEIGHT #0 ~Global("fl#fakeeggs","GLOBAL",1)~ BEGIN fakeeggs1
SAY @50
IF ~~ DO ~GiveItemCreate("misc9v",Player1,0,0,0)~ UNSOLVED_JOURNAL @56 GOTO fakeeggs2
END

IF ~~ BEGIN fakeeggs2
SAY @51
IF ~~ REPLY @52 GOTO fakeeggs3
IF ~~ REPLY @53 GOTO fakeeggs4
END

IF ~~ BEGIN fakeeggs3
SAY @54
IF ~~ DO ~SetGlobal("fl#fakeeggs","GLOBAL",2) ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ BEGIN fakeeggs4
SAY @55
IF ~~ DO ~SetGlobal("fl#fakeeggs","GLOBAL",2) ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT
END

APPEND udimp
IF WEIGHT #-1 ~GlobalGT("fl#fakeeggs","GLOBAL",0)~ BEGIN phaereabode1
SAY @57
IF ~PartyHasItem("MISC9t")~ UNSOLVED_JOURNAL @58 DO "EraseJournalEntry(@56)" GOTO phaereabode2  //Add EraseJounal in a better way than extending baldur.bcs
IF ~!PartyHasItem("MISC9t")~ UNSOLVED_JOURNAL @59 DO "EraseJournalEntry(@56)" GOTO phaereabode3
END

IF ~~ BEGIN phaereabode2
SAY @60
COPY_TRANS udimp 1
END

IF ~~ BEGIN phaereabode3
SAY @61
COPY_TRANS udimp 2
END
END

ADD_STATE_TRIGGER udimp 0
~!GlobalGT("fl#fakeeggs","GLOBAL",0)~
