package Tables::DBI;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use warnings;

use Role::Tiny::With;
with 'TablesRole::Source::DBI';

1;
# ABSTRACT: Get table data from DBI

=head1 SYNOPSIS

 use Tables::DBI;

 my $table = Tables::DBI->new(
     sth           => $dbh->prepare("SELECT * FROM mytable"),
     row_count_sth => $dbh->prepare("SELECT COUNT(*) FROM table"),
 );

 # or
 my $table = Tables::DBI->new(
     dsn           => "DBI:mysql:database=mydb",
     user          => "...",
     password      => "...",
     table         => "mytable",
 );


=head1 DESCRIPTION

This is a Tables:: module to get list of words from a L<DBI> query.


=head1 SEE ALSO

L<DBI>

L<Tables>
