#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 7;

BEGIN {
    use_ok('Test::BDD::Cucumber::Definitions')           || print "Bail out!\n";
    use_ok('Test::BDD::Cucumber::Definitions::HTTP')     || print "Bail out!\n";
    use_ok('Test::BDD::Cucumber::Definitions::HTTP::In') || print "Bail out!\n";
    use_ok('Test::BDD::Cucumber::Definitions::HTTP::Ru') || print "Bail out!\n";
    use_ok('Test::BDD::Cucumber::Definitions::JSON')     || print "Bail out!\n";
    use_ok('Test::BDD::Cucumber::Definitions::JSON::In') || print "Bail out!\n";
    use_ok('Test::BDD::Cucumber::Definitions::JSON::Ru') || print "Bail out!\n";
}

diag("Testing Test::BDD::Cucumber::Definitions $Test::BDD::Cucumber::Definitions::VERSION, Perl $], $^X");
