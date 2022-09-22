#!/usr/bin/perl

@arr = ('<IPDR xsi:type="test">',
'<VoIP:uniqueCallId>005c-0100-2034-ffffffff@h10-250-191-194</VoIP:uniqueCallId>',
'<VoIP:callProgressState>5</VoIP:callProgressState>',
'<nortel:recordID>f37f9294a6157fb0073e58013bcaa52912532e5a9</nortel:recordID>',
'<nortel:recTime>2019-04-23T07:47:28.191Z</nortel:recTime>',
'<nortel:ansInd>true</nortel:ansInd>',
'</IPDR>'
);
$lengthOfArray = @arr;

for($i = 0; $i < $lengthOfArray ; $i = $i+1){
        if($arr[$i] eq "tables"){
                print "Index of elements in array contains 'tables': $i\n";
                $count = $count + 1;
        }
}


