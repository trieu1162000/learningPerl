#!/usr/bin/perl

@number = ( 'Total 5136',
'1-113-VOIPMGCTRUNKGROUP',
'1-1500-VOIPMGCTRUNKGROUP',
'1-5067-VOIPMGCTRUNKGROUP',
'1-VOIPMGSUBTRUNKGROUP',
'2-12-VOIPMGCTRUNKGROUP'
);
$lengthOfArray = @number;

for($i = 0; $i < $lengthOfArray ; $i = $i+1){

        if(grep /Total/, @number[$i]){
		$valueOfTotal = @number[$i];
		($valueOfTotal) =~ /(\d+)/;
		print "a/ Print value of total. (Result: $1)\n";	
	}
}

for($i = 0; $i < $lengthOfArray ; $i = $i+1){

        if(grep /VOIPMGCTRUNKGROUP/, @number[$i]){
                $valueOfString = @number[$i];
                ($valueOfString) =~ /(\d+)-(\d+)/;
		push(@arrayOfString, $2);
        }
}
print "b/ Add value of VOIPMGCTRUNKGROUP into a array and print out that array.\n";
print "(Result: \@arr = (@arrayOfString))\n";



