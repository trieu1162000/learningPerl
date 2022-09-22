#!/usr/bin/perl

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

print "a/ Print all key of hash and then add them into an array (Note: each key is an element of array)\n";

@arrayKeys = keys %data;

print "$arrayKeys[0]\n";
print "$arrayKeys[1]\n";
print "$arrayKeys[2]\n";

print "b/ Print key/value of hash\n";

@arrayValues = values %data;
print "$arrayValues[0]\n";
print "$arrayValues[1]\n";
print "$arrayValues[2]\n";

print "c/ Check if a key is exist.\n";

$sizeOfHash = @arrayKeys;
$count = 0;
for($i = 0; $i < $sizeOfHash ; $i = $i+1){
        if($arr[$i] eq "tables"){
                print "Index of elements in hash contains 'tables': $i\n";
                $count = $count + 1;
        }
}
if($count == 0){
        print "No element in Hash contains 'tables'\n";
}
	
print "d/ Print size of hash\n";
print "Size of Hash: $sizeOfHash\n";



