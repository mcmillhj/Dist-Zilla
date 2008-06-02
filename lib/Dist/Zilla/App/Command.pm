use strict;
use warnings;
package Dist::Zilla::App::Command;
use App::Cmd::Setup -command;

sub zilla {
  my ($self) = @_;

  require Dist::Zilla;
  return $self->{__PACKAGE__}{zilla} ||= Dist::Zilla->from_dir('.');
}

sub log { shift->zilla->log(@_) }

1;