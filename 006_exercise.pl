#!/usr/bin/perl

%employee = (
	'em1' => { 
			'name' => 'A',
                        'year' => 10
                 },
        'em2' => { 
		     	'name' => 'B',
                        'year' => 15
                 }
            );

print "a/ Print info of em1, em2 (name and year);\n";

for $eachEmployee (keys %employee){
	print "$eachEmployee: ";
	for $eachElement (keys %{$employee{$eachEmployee}}){
		print "$eachElement = $employee{$eachEmployee}{$eachElement} ";
	}
	print "\n";
}
print "b/ Print year of em2. (Result: $employee{em2}{year})\n";
