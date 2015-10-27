use v6;
use Bailador;
use JSON::Fast;

my $port = Int(%*ENV<PORT> || 5000);

get '/' => sub {
	content_type 'application/json';

    my $instance_id = %*ENV<CF_INSTANCE_INDEX> || 'none';

    return to-json({
        instance => $instance_id
    });
}

baile( $port );
