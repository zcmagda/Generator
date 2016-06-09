#!/usr/bin/perl

use Text::Password::Pronounceable;
use String::Urandom;
use Crypt::GeneratePassword qw(word word3 chars);

do {
system('clear');

print "\t\tHello!\n\n";
print "You can generate a password!\nChoose how hard your password will be:\n1. Alphanumeric password\n2. A complex password\n3. A pronounceable password\n";
	$lvl=<STDIN>;
	if ( $lvl == 1 ) {
		$generator = String::Urandom->new(LENGTH => 8,
						  CHARS => [ 'a' .. 'z', 'A' .. 'Z', '0' .. '9' ]);
		$password = $generator->rand_string();
		print "Your password is: $password\n";
	}
	elsif ( $lvl == 2 ) {
		$password = chars(8,8);
		print "Your password is: $password\n";
	}
	elsif ( $lvl == 3 ) {
		$generator = Text::Password::Pronounceable->new(8);
		$password = $generator->generate();
		print "Your password is: $password\n";
	}
	else {
		print "Please, pick a number.\n";
	}

	print "\nShould I quit? (yes/no)\n";
	chomp($command=<STDIN>);
	$command=lc($command);

} while ($command ne "yes");
system('clear');
