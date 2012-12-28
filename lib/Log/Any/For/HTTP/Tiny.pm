package Log::Any::For::HTTP::Tiny;

use 5.010;
use strict;
use warnings;
use Log::Any '$log';

our $VERSION = '0.01'; # VERSION

use HTTP::Tiny::Patch::LogAny qw();

my %opts;

sub import {
    my $self = shift;
    %opts = @_;

    HTTP::Tiny::Patch::LogAny->import(%opts);
}

sub unimport {
    HTTP::Tiny::Patch::LogAny->unimport();
}

1;
# ABSTRACT: Add logging to HTTP::Tiny


__END__
=pod

=head1 NAME

Log::Any::For::HTTP::Tiny - Add logging to HTTP::Tiny

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 use Log::Any::For::LWP
     -log_request          => 1, # optional, default 1 (from HTTP::Tiny::Patch::LogAny)
     -log_response         => 1, # optional, default 1 (from HTTP::Tiny::Patch::LogAny)
     -log_response_content => 1, # optional, default 0 (from HTTP::Tiny::Patch::LogAny)
 ;

=head1 DESCRIPTION

An alias for L<HTTP::Tiny::Patch::LogAny>.

=for Pod::Coverage ^(import|unimport)$

=head1 SEE ALSO

L<HTTP::Tiny::Patch::LogAny>

L<Log::Any>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

