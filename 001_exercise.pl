#!/usr/bin/perl

@arr = ('fruits', 'flower', 'vegetables', 'apple', 'banana');
$count = 0;

# Part a
$lengthOfArray = @arr;
print "a/ Print length, the first and last element of array\n";
print "Length of Array: $lengthOfArray\n";
print "First Element: @arr[0]\n";
print "Last Element: @arr[$lengthOfArray - 1]\n";

# Part b
print "b/ Print all elements of array\n";
print "All elements: @arr\n";

# Part c
print "c/ Verify if any element in array contains 'tables'\n";
for($i = 0; $i < $lengthOfArray ; $i = $i+1){
	if($arr[$i] eq "tables"){
		print "Index of elements in array contains 'tables': $i\n";
		$count = $count + 1;
	}
}
if($count == 0){
	print "No element in array contains 'tables'\n";
}
