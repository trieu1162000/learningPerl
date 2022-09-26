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

print "$msgIn{-pattern}{'Cat'}{1}[4]\n";

delete($msgIn{'tcid'});

print %msgIn;
print "\n";
