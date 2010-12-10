use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'MojoX::Log::Log4perl',
    AUTHOR              => 'Breno G. de Oliveira <garu@cpan.org>',
    VERSION_FROM        => 'lib/MojoX/Log/Log4perl.pm',
    ABSTRACT_FROM       => 'lib/MojoX/Log/Log4perl.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'    => 0.94,
        'Mojolicious'   => 0.999920,
        'Log::Log4perl' => 1.25,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'MojoX-Log-Log4perl-*' },
);
