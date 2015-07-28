package Pg::CLI::pg_restore;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '0.12';

use Moose;
use MooseX::SemiAffordanceAccessor;

with qw( Pg::CLI::Role::Connects Pg::CLI::Role::Executable );

## no critic (Subroutines::ProhibitUnusedPrivateSubroutines)
sub _database_at_end {
    return 0;
}

sub _run_options {
    my $self     = shift;
    my $database = shift;

    return ( '-d', $database );
}
## use critic

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: Wrapper for the F<pg_restore> utility

__END__

=head1 SYNOPSIS

  my $pg_restore = Pg::CLI::pg_restore->new(
      username => 'foo',
      password => 'bar',
      host     => 'pg.example.com',
      port     => 5433,
  );

  $pg_restore->run(
      database => 'database',
      options  => [ '-C' ],
  );

  my $sql;
  $pg_restore->run(
      database => 'database',
      options  => ['-C'],
      stdin    => \$sql,
  );

=head1 DESCRIPTION

This class provides a wrapper for the F<pg_restore> utility.

=head1 METHODS

This class provides the following methods:

=head2 Pg::CLI::pg_restore->new( ... )

The constructor accepts a number of parameters:

=over 4

=item * executable

The path to F<pg_restore>. By default, this will look for F<pg_restore> in your path
and throw an error if it cannot be found.

=item * username

The username to use when connecting to the database. Optional.

=item * password

The password to use when connecting to the database. Optional.

=item * host

The host to use when connecting to the database. Optional.

=item * port

The port to use when connecting to the database. Optional.

=item * require_ssl

If this is true, then the C<PGSSLMODE> environment variable will be set to
"require" when connecting to the database.

=back

=head2 $pg_restore->run( database => ..., options => [ ... ] )

This method restores the specified database. Any values passed in C<options> will
be passed on to pg_restore.

This method also accepts optional C<stdin>, C<stdout>, and C<stderr>
parameters. These parameters can be any defined value that could be passed as
the relevant parameter to L<IPC::Run3>'s C<run3> subroutine.

Notably, you can capture the restore output in a scalar reference for the
C<stdout> output.

=head2 $pg_restore->version()

Returns a the three part version as a string.

=head2 $pg_restore->two_part_version()

Returns the first two decimal numbers in the version.

=head1 BUGS

See L<Pg::CLI> for bug reporting details.

=cut
