#!/usr/bin/perl

#Give the following numbers: 0, 1, 22, 333, 4444, 55555, 666666, 7777777.
@arrayNumbers = (0, 1, 22, 333, 4444, 55555, 666666, 7777777);
$lengthOfArray = @arrayNumbers;

print "a/Print 1 digit number: ";
for($i = 0; $i < $lengthOfArray ; $i = $i+1){
	if(grep /^\d{1}$/, @arrayNumbers[$i]){
		print "@arrayNumbers[$i] ";
	}	
}
print "\nb/Print 2 or more digit number: ";
for($i = 0; $i < $lengthOfArray ; $i = $i+1){
        if(grep /^\d{2}+/, @arrayNumbers[$i]){
                print "@arrayNumbers[$i] ";
        }
}
print "\n";

