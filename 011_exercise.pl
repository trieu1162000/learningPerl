#!/usr/bin/perl

my %msgIn = (
	-pattern => 
		{
		'Cat' => 
			{
	 		 1 => 
				[
	  			'SGW_SIP_ID', 'CP_CALLM_ID',
	  			'ID_CHANNEL_ID  SIP_DAL 20100',
	 			'ID_CALLED_PARTY_NUM  1300000000',
	  			'ID_CALLING_PARTY_CAT  CGPCAT_PAY_PHONE'
	  			],
	  		},
		},
	-tcid           => "TC_01",
  	-start_boundary => 'ECCP_CC_SETUP'
);

sub printHashFunc{
        my %hash = @_;
        for $eachElementOfHash (sort keys %hash){
                print "$eachElementOfHash: ";
		if ($eachElementOfHash eq -pattern){
			for $eachEEOfHash (sort keys %{$hash{$eachElementOfHash}}){
                        	print "$eachEEOfHash: " ;
				for $eachEEEOfHash (sort keys %{$hash{$eachElementOfHash}{$eachEEOfHash}}){
					print "$eachEEEOfHash: \n";
					foreach $elementOfArray (@{$hash{$eachElementOfHash}{$eachEEOfHash}{$eachEEEOfHash}}){
					print "			$elementOfArray\n";
					}
				}
                	}

		}
		else {
			print "$hash{$eachElementOfHash}";
		}
                print "\n";
        }
}

#printHashFunc(%msgIn);
print "a/ Print Out value: "; 
print "$msgIn{-pattern}{'Cat'}{1}[4]\n";
print "b/ Delete key \"-tcid\" and then print out the hash.\n";
delete($msgIn{'-tcid'});
printHashFunc(%msgIn);

