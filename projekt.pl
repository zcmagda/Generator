#!/usr/bin/perl

system('clear');

print "\t\tHello!\n\n";
print "What you want to do?\n1. Create wierd nick\n2. Gennerate a password\n3. Code a file\n";
$ch=<STDIN>;
if ( $ch == 2 ) {
	system('clear');
	print "You can choose how hard your password will be:\n1. A simple password\n2. A hard password\n3. A complex password\n";
	$lvl=<STDIN>;
}
elsif ( $ch == 3 ) {
	system('clear');
	print "What is the name of file?\n";
	$name=<STDIN>;
}
elsif ( $ch == 1 ) {
	system('clear');
	print "Your nick is: \nIs it nice or you want to new one?(y/n)\n";
	$yn=<STDIN>;
	if ( $yn = 'y' ) {
		print " omg\n";
		}
} 
else {
	print "Please, type a number.\n";
}
