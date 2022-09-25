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
$count = 0;
for($i = 0; $i < $lengthOfArray ; $i = $i+1){
        if(grep /VoIP|[Nn]ortel/, @arr[$i]){
       		$count ++;
       	}
}
print "a/ Count number of lines that contain 'VoIP' or 'Nortel'. (Result: $count)\n";

for($i = 0; $i < $lengthOfArray ; $i = $i+1){

       	if(grep /uniqueCallId/, @arr[$i]){
                $string = @arr[$i];
		$string =~ />/g;
		($value) = ($string =~ /\G(\w+-\d+-\d+)/);
       		print "b/ Print out value of 'uniqueCallId'. (Result: $value)\n";
       	}
}

for($i = 0; $i < $lengthOfArray ; $i = $i+1){

        if(grep /recordID/, @arr[$i]){
                $string = @arr[$i];
                $string =~ />/g;
                ($value) = ($string =~ /\G(\w+)/);
		print "c/ Print out value of 'recordID'. (Result: $value)\n";	
	}
}

for($i = 0; $i < $lengthOfArray ; $i = $i+1){

        if(grep /recTime/, @arr[$i]){
                $string = @arr[$i];
                $string =~ />/g;
                ($time) = ($string =~ /\G((\d+)-(\d+)-(\d+))/);
		($year, $month, $day) = ($2, $3, $4);
        	print "d/ Print out value of month in 'recTime' line. (Result: $month)\n";
	}
}

