#!/usr/bin/perl


$string = "I'm always happy and excited when newyear comes since this is the time when I come back my hometown. Seeing everyone in my family gets me feeling so good";

print "a) Tranform this string into an array with its each element is each single word in the string.\n";
@array = split (/ /, $string);
print ("@array\n");

print "b) Print out 2nd element, 6th element 20th element in one line, separated by a space character \" \".\n";
print "$array[1] $array[5] $array[19] \n";
