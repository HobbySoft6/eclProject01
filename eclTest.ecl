
shared add1(integer a1, integer a2) := function
   a := a1 + a2;
	 //output(a, named('thisisthec'));
	 return a;
	 end;
	 
testResult := add1(123, 127);

myAction := case(testResult, 
                 250 => output('pass test'),
		 fail('failed'));
myAction;				

