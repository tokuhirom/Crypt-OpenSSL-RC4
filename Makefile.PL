use inc::Module::Install;
name 'Crypt-OpenSSL-RC4';
all_from 'lib/Crypt/OpenSSL/RC4.pm';

can_cc or die "This module requires a C compiler";
libs '-lcrypto';
makemaker_args(
    OBJECT => '$(O_FILES)',
    clean => {
        FILES => q{
            *.stackdump
            *.gcov *.gcda *.gcno
            *.out
            nytprof
            cover_db
        },
    },
);

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
