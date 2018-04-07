package Pg::CLI;

use strict;
use warnings;

our $VERSION = '0.14';

1;

# ABSTRACT: Run Postgres CLI utilities

__END__

=head1 SYNOPSIS

  my $psql = Pg::CLI::psql->new(
      username => 'foo',
      password => 'bar',
      host     => 'pg.example.com',
      port     => 5433,
  );

  $psql->run(
      name    => 'database',
      options => [ '-c', 'DELETE FROM table' ],
  );

=head1 DESCRIPTION

This distribution provides some simple wrapper around the command line
utilities that ship with Postgres. Currently, it includes the following
classes:

=over 4

=item * L<Pg::CLI::psql>

=item * L<Pg::CLI::pg_dump>

=item * L<Pg::CLI::pg_restore>

=item * L<Pg::CLI::pg_config>

=back

=cut
