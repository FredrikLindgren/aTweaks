#!/usr/bin/perl

use strict;
use File::Copy;
use File::Path;

my @cmd_args = split(" ", shift);

my @undead = (
    "banshee.ssl:fl#bansh.baf",
    "deathknight.ssl IsDurlagKnight=True:fl#bg1kn.baf",
    "deathknight.ssl:fl#death.baf",
    "fl#dksw5.ssl:fl#dksw5.baf",
    "ghast.ssl Ghast=True:fl#ghast.baf",
    "ghast.ssl GhoulLord=True:fl#glord.baf",
    "ghoul.ssl:fl#ghoul.baf",
    "gmummy.ssl:fl#gmum.baf",
    "mummy.ssl:fl#mum.baf",
    "skelwa_melee.ssl:fl#sklwm.baf",
    "skelwa_ranged.ssl:fl#sklwr.baf",
    "gooddeat.ssl:gooddeat.baf",
    "killgood.ssl:killgood.baf",
    "zombie-sea.ssl:fl#zomse.baf",
    "fl#lowm.ssl:fl#lowm.baf",
    "fl#lowr.ssl:fl#lowr.baf",
    "fl#midmc.ssl:fl#midmc.baf",
    "fl#higmc.ssl:fl#higmc.baf"
    );

my @beholders = (
    "beholder.ssl:fl#behol.baf",
    "beholder.ssl DeathTyrant=True:fl#bhund.baf",
    "beholder.ssl HiveMother=True:fl#bhhiv.baf",
    "director.ssl:fl#bhdir.baf",
    "gauth.ssl:fl#gauth.baf",
    "spectator.ssl:fl#bhspe.baf"
    );

my @fiends = (
    "fl#adead.ssl:fl#adead.baf",
    "fl#sarca.ssl:fl#sarca.baf",
    "fl#snyca.ssl:fl#snyca.baf",
    "fl#sultr.ssl:fl#sultr.baf"
    );

sub process_files {
    my @files = @{$_[0]};
    my $to_dir = $_[1];
    my $from_dir = $_[2];
    File::Path::make_path($to_dir);
    foreach (@files) {
	my @collection = split(":");
	my $arg = $from_dir . $collection[0];
	my $file = $collection[1];
	system("perl", "ssl.pl", "$arg -l lib.slb");
	my $index = index $collection[0], " ";
	my $res = substr $collection[0], 0, $index > 0 ? $index - 4 : -4;
	my $from = $from_dir . "ssl_out/" . $res . ".baf";
	my $to = $to_dir . $file;
	File::Copy::move($from, $to);
    }
    File::Path::remove_tree($from_dir . "ssl_out/");
}

File::Path::remove_tree("baf/");

foreach (@cmd_args) {
    process_files(\@undead, "baf/undead/", "undead/") if $_ eq "undead";
    process_files(\@beholders, "baf/beholders/", "beholder/") if $_ eq "beholders";
    process_files(\@fiends, "baf/fiends/", "fiends/") if $_ eq "fiends";
}
