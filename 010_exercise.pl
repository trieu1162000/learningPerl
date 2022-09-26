#!/usr/bin/perl

%students = (
        'student1' => {
                        'name' => 'Lucy',
                        'age' => 20
                 },
        'student2' => {
                        'name' => 'Jamie',
                        'age' => 18
                 }
            );
sub printHashFunc{
	my %hash = @_;
	for $eachElementOfHash (sort keys %hash){
		print "$eachElementOfHash: ";
		for $eachElementOfElementOfHash (sort keys %{$hash{$eachElementOfHash}}){
			print "$eachElementOfElementOfHash = $hash{$eachElementOfHash}{$eachElementOfElementOfHash} ";
		}
		print "\n";
	}
}

print "a) Printing out the names and the ages of the two students.\n";
printHashFunc(%students);

print "b) Add another key-value as id-1111 to hash student1.\n";
$students{student1}{'id'} = 1111;
printHashFunc(%students);
