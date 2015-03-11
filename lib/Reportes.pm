package Reportes;

use Moo;
use HTTP::Tiny;

has secure => (is => 'ro');

has domain  => (is => 'ro');

has username => (is => 'ro');

has token => (is => 'ro');


my $http = HTTP::Tiny->new( agent => 'FetchPNG-0.1');


sub  bandwith {

    my $self = shift;

    my $deviceid = shift;

    my $module = shift;

    my $prot;
    
    $self->secure ? $prot = 'https://' : $prot = 'http://';

    my $url = $prot . $self->username . ':' . $self->token . '@' . $self->domain
	. '/api/2.0/?method=device.module_graph' . "&device_id=$deviceid" .
	"&module_id=$module";

    return $http->request('GET', $url);

}

sub method {

    my $self = shift;

    my $prot;

    $self->secure ? $prot = 'https://' : $prot = 'http://';

    my $url = 'https://' . $self->username . ':' . $self->token
	. '@' . $self->domain . '/api/2.0/?method=uber.method_list';

    return $http->request('GET', $url);

}


1;
