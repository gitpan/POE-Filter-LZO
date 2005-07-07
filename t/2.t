# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 3;
BEGIN { use_ok('POE::Filter::LZO') };

my $filter = POE::Filter::LZO->new();

isa_ok( $filter, "POE::Filter::LZO" );

my $teststring = "All the little fishes";
my $compressed = $filter->put( [ $teststring ] );
my $answer = $filter->get( [ $compressed->[0] ] );
ok( $teststring eq $answer->[0], 'Round trip test' );
