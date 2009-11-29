package HP::Proliant::Component::DiskSubsystem::Fca::CLI;
our @ISA = qw(HP::Proliant::Component::DiskSubsystem::Fca);

use strict;
use Nagios::Plugin;

sub new {
  my $class = shift;
  my %params = @_;
  my $self = {
    controllers => [],
    accelerators => [],
    physical_drives => [],
    logical_drives => [],
    spare_drives => [],
    blacklisted => 0,
  };
  bless $self, $class;
  return $self;
}

sub init {
  my $self = shift;
  # .....
  $self->{global_status} =
      HP::Proliant::Component::DiskSubsystem::Fca::GlobalStatus->new(
          runtime => $self->{runtime},
          cpqFcaMibCondition => 'n/a',
      );

}

1;
