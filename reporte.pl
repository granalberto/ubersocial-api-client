#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;
use lib 'lib';
use Reportes;
use Data::Dumper;

my $rep = Reportes->new(secure => '1',
			domain => 'service.m5hosting.com',
			username => 'yabarana',
			token => '$0y.4lb3rt0');

# say Dumper $rep->bandwith(1234,'network');

say Dumper $rep->method;


