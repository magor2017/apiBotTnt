use strict;
use warnings;

use apiBotTnt;
use Test::More tests => 2;
use Plack::Test;
use HTTP::Request::Common;

my $app = apiBotTnt->to_app;
is( ref $app, 'CODE', 'Got app' );

my $test = Plack::Test->create($app);
my $res  = $test->request( GET '/' );
my $test  = $test->request( GET '/test' );

ok( $res->is_success, '[GET /] successful' );
ok( $test->is_success, '[GET /test] successful' );
