use 5.008001;
use strict;
use Module::Build;
use lib qw(inc);
use Devel::CheckLib;

check_lib_or_exit(
    lib => [qw(crypto)]
);

my $build = Module::Build->new(
    module_name          => 'Crypt::OpenSSL::RC4',
    build_requires       => { 'Test::More' => 0, },
    requries             => {},
    recommends           => {},
    recursive_test_files => 1,
    sign                 => 0,
    create_license       => 1,
    extra_linker_flags   => '-lcrypto',
    c_source             => './lib/Crypt/OpenSSL/'
);
$build->create_build_script;

