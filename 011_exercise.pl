#!/usr/bin/perl

my %msgIn = (
  -pattern => {
  'Cat' => {
   1 => [
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
        for $eachElementOfHash (keys %hash){
                print "$eachElementOfHash: ";
                for $eachElementOfElementOfHash (keys %{$hash{$eachElementOfHash}}){
                        print "$eachElementOfElementOfHash = $hash{$eachElementOfHash}{$eachElementOfElementOfHash} ";
                }
                print "\n";
        }
}

printHashFunc(%msgIn);

print "Delete key \"-tcid\" and then print out the hash.";
delete $msgIn{'-tcid'};
printHashFunc(%msgIn);

