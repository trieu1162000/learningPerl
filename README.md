# learningPerl
This Repo includes source code for Perl exercises.

Exercise 1:
Give a following array: 
@arr = (‘fruits’, ‘flower’, ‘vegetables’, ‘apple’, ‘banana’);
a/ Print length,  the first and last element of  array
b/ Print all elements of array
c/ Verify if any element in array contains 'tables'
Exercise 2:
Declare a hash and then do some below requests:
a/ Print all key of hash and then add them into an array (Note: each key is an element of array)
b/ Print key/value of hash
c/ Check if a key is exist.
d/ Print size of hash
Exercise 3: (Use regular expression for #3,4)
Give a string: "A regular expression (abbreviated regexp or regex) is a way to describe sets of characters using syntactic rules. Many programming languages use or support regular expression. A REGULAR expression is then used by a special program or part of a programming language  " 
a/ Verify if string contains 'Perl'.
b/ Replace all “regular/REGULAR expression” with “PERL”.
Exercise 4: 
Give the following numbers: 0, 1, 22, 333, 4444, 55555, 666666, 7777777.
a/ Print 1 digit number
b/ Print 2 or more digit number
Exercise for session2:

Exercise 5: Give an array below:
@arr = ('<IPDR xsi:type="test">',
'<VoIP:uniqueCallId>005c-0100-2034-ffffffff@h10-250-191-194</VoIP:uniqueCallId>',
'<VoIP:callProgressState>5</VoIP:callProgressState>',
'<nortel:recordID>f37f9294a6157fb0073e58013bcaa52912532e5a9</nortel:recordID>',
'<nortel:recTime>2019-04-23T07:47:28.191Z</nortel:recTime>',
'<nortel:ansInd>true</nortel:ansInd>',
'</IPDR>'
);
a/ Count number of lines that contain 'VoIP' or 'Nortel'. (Result: 5)
b/ Print out value of 'uniqueCallId'. (Result: 005c-0100-2034-ffffffff)
c/ Print out value of 'recordID'. (Result: f37f9294a6157fb0073e58013bcaa52912532e5a9).
d/ Print out value of month in 'recTime' line. (Result: 04).

Exercise 6: %employee = ('em1' => { 'name' => 'A',
                                                              'year' => 10
                                                            },
                                            'em2' => { 'name' => 'B',
                                                             'year' => 15
                                                            }
                                             );
a/ Print info of em1, em2 (name and year);
b/ Print year of em2. (Result: 15)

Exercise 7: Give an array:
@number = ( 'Total 5136',
'1-113-VOIPMGCTRUNKGROUP',
'1-1500-VOIPMGCTRUNKGROUP',
'1-5067-VOIPMGCTRUNKGROUP',
'1-VOIPMGSUBTRUNKGROUP',
'2-12-VOIPMGCTRUNKGROUP'
);
a/ Print value of total. (Result: 5136)
b/ Add value of VOIPMGCTRUNKGROUP into a array and print out that array. (Result: @arr = (113, 1500, 5067, 12)).

Exercise 8: Give $recordID = "2b08069da62b6406e3e58013a428379a60c322e9".
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

Q/ Add ipdr packages that has recordID = '2b08069da62b6406e3e58013a428379a60c322e9' into a new array.
Result:
@newArr = ('<IPDR xsi:type="nortel:Nortel-SDP">',
'<nortel:recordID>2b08069da62b6406e3e58013a428379a60c322e9</nortel:recordID>',
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

Exercise 9: Given $string = "I'm always happy and excited when newyear comes since this is the time when I come back my hometown. Seeing everyone in my family gets me feeling so good".
a) Tranform this string into an array with its each element is each single word in the string.
b) Print out 2nd element, 6th element 20th element in one line, separated by a space character " ".
Exercise 10: Create 2 hashes with below requirements:
 - Hash student1 with key-value pairs as name-Lucy, age-20.
 - Hash student2 with key-value pairs as name-Jamie, age-18. 
a) Printing out the names and the ages of the two students.
b) Add another key-value as id-1111 to hash student1.
Exercise 11:
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
a/ Print out "ID_CALLING_PARTY_CAT  CGPCAT_PAY_PHONE" in this hash.
b/ Delete key "-tcid" and then print out the hash.
