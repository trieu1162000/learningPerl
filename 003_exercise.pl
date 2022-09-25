#!/usr/bin/perl

$string = "A regular expression (abbreviated regexp or regex) is a way to describe sets of characters using syntactic rules. Many programming languages use or support regular expression. A REGULAR expression is then used by a special program or part of a programming language  ";


if($string =~ /Perl/){
	print "a/ string contains 'Perl'\n";
}

else {
	print "a/ string does not contain 'Perl'\n";
}

$string =~ s/REGULAR expression/PERL/;
$string =~ s/regular expression/PERL/;
print "b/ \n$string\n";
