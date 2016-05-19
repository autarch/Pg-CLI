# NAME

Pg::CLI - Run Postgres CLI utilities

# VERSION

version 0.12

# SYNOPSIS

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

# DESCRIPTION

This distribution provides some simple wrapper around the command line
utilities that ship with Postgres. Currently, it includes the following
classes:

- [Pg::CLI::psql](https://metacpan.org/pod/Pg::CLI::psql)
- [Pg::CLI::pg\_dump](https://metacpan.org/pod/Pg::CLI::pg_dump)
- [Pg::CLI::pg\_restore](https://metacpan.org/pod/Pg::CLI::pg_restore)
- [Pg::CLI::pg\_config](https://metacpan.org/pod/Pg::CLI::pg_config)

# DONATIONS

If you'd like to thank me for the work I've done on this module, please
consider making a "donation" to me via PayPal. I spend a lot of free time
creating free software, and would appreciate any support you'd care to offer.

Please note that **I am not suggesting that you must do this** in order for me
to continue working on this particular software. I will continue to do so,
inasmuch as I have in the past, for as long as it interests me.

Similarly, a donation made in this way will probably not make me work on this
software much more, unless I get so many donations that I can consider working
on free software full time, which seems unlikely at best.

To donate, log into PayPal and send money to autarch@urth.org or use the
button on this page: [http://www.urth.org/~autarch/fs-donation.html](http://www.urth.org/~autarch/fs-donation.html)

# BUGS

Please report any bugs or feature requests to `bug-pg-cli@rt.cpan.org`, or
through the web interface at [http://rt.cpan.org](http://rt.cpan.org).  I will be notified, and
then you'll automatically be notified of progress on your bug as I make
changes.

Bugs may be submitted through [the RT bug tracker](http://rt.cpan.org/Public/Dist/Display.html?Name=Pg-CLI)
(or [bug-pg-cli@rt.cpan.org](mailto:bug-pg-cli@rt.cpan.org)).

I am also usually active on IRC as 'drolsky' on `irc://irc.perl.org`.

# DONATIONS

If you'd like to thank me for the work I've done on this module, please
consider making a "donation" to me via PayPal. I spend a lot of free time
creating free software, and would appreciate any support you'd care to offer.

Please note that **I am not suggesting that you must do this** in order for me
to continue working on this particular software. I will continue to do so,
inasmuch as I have in the past, for as long as it interests me.

Similarly, a donation made in this way will probably not make me work on this
software much more, unless I get so many donations that I can consider working
on free software full time (let's all have a chuckle at that together).

To donate, log into PayPal and send money to autarch@urth.org, or use the
button at [http://www.urth.org/~autarch/fs-donation.html](http://www.urth.org/~autarch/fs-donation.html).

# AUTHOR

Dave Rolsky <autarch@urth.org>

# COPYRIGHT AND LICENCE

This software is Copyright (c) 2016 by Dave Rolsky.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
