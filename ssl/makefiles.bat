
perl ssl.pl "deathknight.ssl IsDurlagKnight=True -l lib"
move deathknight.baf out\fl#bg1kn.baf

perl ssl.pl "deathknight.ssl IsDurlagKnight=False -l lib"
move deathknight.baf out\fl#death.baf

perl ssl.pl "mummy.ssl -l lib"
move mummy.baf out\fl#mum.baf

perl ssl.pl "ghoul.ssl -l lib"
move ghoul.baf out\fl#ghoul.baf

perl ssl.pl "ghast.ssl Ghast=True&GhoulLord=False -l lib"
move ghast.baf out\fl#ghast.baf

perl ssl.pl "ghast.ssl Ghast=False&GhoulLord=True -l lib"
move ghast.baf out\fl#glord.baf

perl ssl.pl "fl#dksw5.ssl -l lib"
move fl#dksw5.baf out

perl ssl.pl "skelwa.ssl DamageRes=SlashRes -l lib"
move skelwa.baf out\fl#sklwm.baf

perl ssl.pl "skelwa.ssl DamageRes=PierceRes -l lib"
move skelwa.baf out\fl#sklwr.baf

perl ssl.pl "banshee.ssl -l lib"
move banshee.baf out\fl#bansh.baf






perl ssl.pl "beholder.ssl DeathTyrant=False&HiveMother=False -l lib"
move beholder.baf out\fl#behol.baf

perl ssl.pl "beholder.ssl DeathTyrant=True&HiveMother=False -l lib"
move beholder.baf out\fl#bhund.baf

perl ssl.pl "beholder.ssl DeathTyrant=False&HiveMother=True -l lib"
move beholder.baf out/fl#bhhiv.baf

perl ssl.pl "gauth.ssl -l lib"
move gauth.baf out\fl#gauth.baf

perl ssl.pl "spectator.ssl -l lib"
move spectator.baf out\fl#bhspe.baf

perl ssl.pl "director.ssl -l lib"
move director.baf out\fl#bhdir.baf

