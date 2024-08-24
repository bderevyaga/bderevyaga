# Perl

## Install

```bash
apt-get update
apt-get install locales
locale-gen en_US.UTF-8
apt-get install perl
```

## Version

```bash
perl -v

# This is perl 5, version 38, subversion 2 (v5.38.2) built for x86_64-linux-gnu-thread-multi
# (with 44 registered patches, see perl -V for more detail)
#
# Copyright 1987-2023, Larry Wall
#
# Perl may be copied only under the terms of either the Artistic License or the
# GNU General Public License, which may be found in the Perl 5 source kit.
# 
# Complete documentation for Perl, including FAQ lists, should be found on
# this system using "man perl" or "perldoc perl".  If you have access to the
# Internet, point your browser at https://www.perl.org/, the Perl Home Page.
```

## Code

```text
my $sum = 0;

for (my $i = 0; $i < 100_000_000; $i++) {
    $sum += $i;
}

print "$sum\n";
```

## Tests

```bash
time perl main.pl

# 4999999950000000
#
# real    0m10.658s
# user    0m10.649s
# sys     0m0.006s
```