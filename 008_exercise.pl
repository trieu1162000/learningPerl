#!/usr/bin/perl

my @ipdr = ('<IPDR xsi:type="nortel:Nortel-SDP">',
'<nortel:recordID>2b08069da62b6406e3e58013a428379a60c322e9</nortel:recordID>',
'<nortel:sessionID>0</nortel:sessionID>',
'<nortel:sessionName>nortelnetworks</nortel:sessionName>',
'</IPDR>',
'<IPDR xsi:type="nortel:Nortel-SDP">',
'<nortel:recordID>3b08069da604b650f33e5801317a8598efc372694</nortel:recordID>',
'<nortel:sessionID>0</nortel:sessionID>',
'<nortel:sessionName>nortelnetworks</nortel:sessionName>',
'</IPDR>',
'<IPDR xsi:type="nortel:Nortel-Codec-List">',
'<nortel:recordID>2b08069da62b6406e3e58013a428379a60c322e9</nortel:recordID>',
'<nortel:sessionID>0</nortel:sessionID>',
'<nortel:mediaID>0</nortel:mediaID>',
'<nortel:codec>0 PCMU/8000</nortel:codec>',
'</IPDR>'
);

@arrIndex = ();

$lengthOfArrayIPDR = @ipdr;
for($i = 0; $i < $lengthOfArrayIPDR ; $i = $i+1){

        if(grep /<IPDR/, @ipdr[$i]){
                push(@arrIndex, $i); 
        }
}

push(@arrIndex, 16);

$lengthOfArrayIndex = @arrIndex;
for($i = 0; $i < $lengthOfArrayIndex ; $i = $i+1){
	for($j = ($arrIndex[$i]);$j < ($arrIndex[$i+1]); $j++){
		push(@newSubArr, $ipdr[$j]);
	}

	$lengthOfNewSubArr = @newSubArr;
	for($k = 0; $k < $lengthOfNewSubArr; $k ++){
		if(grep /2b08069da62b6406e3e58013a428379a60c322e9/, @newSubArr[$k]){
	                push(@newArr, @newSubArr);
		}

	}
	@newSubArr = ();
}

foreach (@newArr)
{
        print ("$_\n");
}

