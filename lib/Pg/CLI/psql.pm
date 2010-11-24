package Pg::CLI::psql;

use Moose;

use namespace::autoclean;

use MooseX::Params::Validate qw( validated_list );
use MooseX::SemiAffordanceAccessor;
use MooseX::Types::Moose qw( ArrayRef Bool Str );

with 'Pg::CLI::Role::Command';

has quiet => (
    is      => 'ro',
    isa     => Bool,
    default => 1,
);

sub execute_file {
    my $self = shift;
    my $file = pos_validated_list( \@_, { isa => 'Str' } );

    $self->_run( options => [ '-f', $file ] );
}

sub run {
    my $self = shift;
    my ( $name, $options ) = validated_list(
        \@_,
        name    => { isa => Str },
        options => { isa => ArrayRef [Str] },
    );

    $self->_execute_command(
        'psql',
        $self->_connect_options(),
        ( $self->quiet() ? '-q' : () ),
        @{$options},
        $name,
    );
}

__PACKAGE__->meta()->make_immutable();

1;
