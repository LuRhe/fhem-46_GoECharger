##############################################
# $Id: myUtilsTemplate.pm 21509 2020-03-25 11:20:51Z rudolfkoenig $
#
# Save this file as 99_myUtils.pm, and create your own functions in the new
# file. They are then available in every Perl expression.

package main;

use strict;
use warnings;

sub
myUtilsControls_Initialize($$)
{
  my ($hash) = @_;
}

sub Controls() {
#!/usr/bin/perl

use File::Basename;
use POSIX qw(strftime);
use strict;

my @filenames = ("46_GoECharger.pm");

my $prefix = "FHEM";
my $filename = "";
foreach $filename (@filenames)
{
  my @statOutput = stat($prefix."/".$filename);
  
  if (scalar @statOutput != 13)
  {
    printf("error: stat has unexpected return value for ".$prefix."/".$filename."\n");
    next;
  }

  my $mtime = $statOutput[9];
  my $date = POSIX::strftime("%Y-%m-%d", localtime($mtime));
  my $time = POSIX::strftime("%H:%M:%S", localtime($mtime));
  my $filetime = $date."_".$time;

  my $filesize = $statOutput[7];

  printf("UPD ".$filetime." ".$filesize." ".$prefix."/".$filename."\n");
}
}


1;
