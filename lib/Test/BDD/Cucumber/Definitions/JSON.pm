package Test::BDD::Cucumber::Definitions::JSON;

use strict;
use warnings;

use Carp;
use DDP ( show_unicode => 1 );
use Exporter qw(import);
use JSON::XS;
use Params::ValidationCompiler qw(validation_for);
use Test::BDD::Cucumber::Definitions qw(S);
use Test::BDD::Cucumber::Definitions::TypeConstraints qw(:all);
use Test::More;
use Try::Tiny;

our $VERSION = '0.17';

our @EXPORT_OK = qw(
    content_decode
);
our %EXPORT_TAGS = (
    util => [
        qw(
            content_decode
            )
    ]
);

## no critic [Subroutines::RequireArgUnpacking]

sub content_decode {

    # Clean data structure
    S->{struct}->{data} = undef;

    my $error;

    my $decoded_content = S->{http}->{response_object}->decoded_content();

    S->{struct}->{data} = try {
        decode_json($decoded_content);
    }
    catch {
        $error = "Could not decode http response content as JSON: $_[0]";

        return;
    };

    if ($error) {
        fail(qq{Http response content was decoded as JSON});
        diag($error);
    }
    else {
        pass(qq{Http response content was decoded as JSON});
    }

    diag( 'Http response content = ' . np $decoded_content );

    return;
}

1;
