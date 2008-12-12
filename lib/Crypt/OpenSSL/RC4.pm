package Crypt::OpenSSL::RC4;
use strict;
use warnings;
use Exporter 'import';
our $VERSION = '0.01';
our @ISA;
our @EXPORT = qw/RC4/;

eval {
    require XSLoader;
    XSLoader::load(__PACKAGE__, $VERSION);
    1;
} or do {
    require DynaLoader;
    push @ISA, 'DynaLoader';
    __PACKAGE__->bootstrap($VERSION);
};

sub RC4 {
    my ($pass, $in) = @_;
    my $rc4 = Crypt::OpenSSL::RC4->new($pass);
    $rc4->rc4($in);
}

1;
__END__

=head1 NAME

Crypt::OpenSSL::RC4 -

=head1 SYNOPSIS

  use Crypt::OpenSSL::RC4;

=head1 DESCRIPTION

Crypt::OpenSSL::RC4 is

=head1 AUTHOR

Default Name E<lt>default {at} example.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
