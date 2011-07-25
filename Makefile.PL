use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'RPC::Any::Interface::PSGI',
    AUTHOR              => q{Sherwin Daganato <sherwin@daganato.com>},
    VERSION_FROM        => 'lib/RPC/Any/Interface/PSGI.pm',
    ABSTRACT_FROM       => 'lib/RPC/Any/Interface/PSGI.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'RPC-Any-Interface-PSGI-*' },
);
