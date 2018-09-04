package apiBotTnt;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};
post '/test' => sub {
    #template 'index';
    return 'rasta';
};

true;
