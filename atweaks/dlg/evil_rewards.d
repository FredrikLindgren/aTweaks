
//Windspear
/*
ALTER_TRANS firkra02 BEGIN 34 END BEGIN 0 END BEGIN ACTION
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
*/
REPLACE_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player1,40500)~ ~~

ADD_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player1,44500)~

REPLACE_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player2,40500)~ ~AddXPObject(Player2,44500)~

REPLACE_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player3,40500)~ ~AddXPObject(Player3,44500)~

REPLACE_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player4,40500)~ ~AddXPObject(Player4,44500)~

REPLACE_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player5,40500)~ ~AddXPObject(Player5,44500)~

REPLACE_TRANS_ACTION firkra02 BEGIN 34 END BEGIN 0 END
~AddXPObject(Player6,40500)~ ~AddXPObject(Player6,44500)~


//Trademeet
APPEND trevil01 
IF ~~ THEN BEGIN alt_reward
SAY @0
COPY_TRANS trevil01 30
END
END

ALTER_TRANS trevil01 BEGIN 26 END BEGIN 2 END BEGIN TRIGGER
~False()~
END

ALTER_TRANS trevil01 BEGIN 27 28 END BEGIN 1 END BEGIN TRIGGER
~False()~
END

EXTEND_BOTTOM trevil01 26 #1
IF ~~ THEN REPLY #50663 GOTO alt_reward
END

EXTEND_BOTTOM trevil01 27 #1
IF ~~ THEN REPLY #50686 GOTO alt_reward
END

EXTEND_BOTTOM trevil01 28 #1
IF ~~ THEN REPLY #50691 GOTO alt_reward
END

REPLACE_TRANS_ACTION trevil01 BEGIN 39 END BEGIN 0 END
~GiveGoldForce(1000)~ ~GiveGoldForce(3000)~

REPLACE_TRANS_ACTION trevil01 BEGIN 39 END BEGIN 0 END
~GiveItemCreate("shld25",LastTalkedToBy,0,0,0)~
~GiveItemCreate("misc3f",LastTalkedToBy,1,0,0) GiveItemCreate("bolt08",LastTalkedToBy,5,0,0)~

ADD_TRANS_ACTION trevil01 BEGIN 39 END BEGIN 0 END
~AddXPObject(Player1,37500)
AddXPObject(Player2,37500)
AddXPObject(Player3,37500)
AddXPObject(Player4,37500)
AddXPObject(Player5,37500)
AddXPObject(Player6,37500)~


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
/*
ALTER_TRANS bodhi BEGIN 22 END BEGIN 0 1 2 END BEGIN ACTION
~AddXPObject(Player1,45000)
AddXPObject(Player2,45000)
AddXPObject(Player3,45000)
AddXPObject(Player4,45000)
AddXPObject(Player5,45000)
AddXPObject(Player6,45000)
TakePartyGold(15000)~
END
*/
REPLACE_TRANS_ACTION bodhi BEGIN 22 END BEGIN 0 1 2 END
~AddXPObject(Player1,36750)~ ~AddXPObject(Player1,45000)~

REPLACE_TRANS_ACTION bodhi BEGIN 22 END BEGIN 0 1 2 END
~AddXPObject(Player2,36750)~ ~AddXPObject(Player2,45000)~

REPLACE_TRANS_ACTION bodhi BEGIN 22 END BEGIN 0 1 2 END
~AddXPObject(Player3,36750)~ ~AddXPObject(Player3,45000)~

REPLACE_TRANS_ACTION bodhi BEGIN 22 END BEGIN 0 1 2 END
~AddXPObject(Player4,36750)~ ~AddXPObject(Player4,45000)~

REPLACE_TRANS_ACTION bodhi BEGIN 22 END BEGIN 0 1 2 END
~AddXPObject(Player5,36750)~ ~AddXPObject(Player5,45000)~

REPLACE_TRANS_ACTION bodhi BEGIN 22 END BEGIN 0 1 2 END
~AddXPObject(Player6,36750)~ ~AddXPObject(Player6,45000)~


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

ALTER_TRANS uddemon BEGIN 8 END BEGIN 1 END BEGIN TRIGGER
~False()~
END

EXTEND_TOP uddemon 8 #1 
IF ~~ REPLY #52147 DO ~TakePartyItem("misc9t") SetGlobal("EggsDie","GLOBAL",1) GiveGoldForce(20000)~ GOTO 11
END

ADD_TRANS_ACTION uddemon BEGIN 7 END BEGIN 0 1 2 3 4 5 6 7 8 10 11 END
~AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)~

ADD_TRANS_ACTION uddemon BEGIN 11 13 21 22 END BEGIN 0 END
~EraseJournalEntry(@58)
EraseJournalEntry(@59)~

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
IF ~PartyHasItem("MISC9t")~ UNSOLVED_JOURNAL @58 DO "EraseJournalEntry(@56)" GOTO phaereabode2
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
