import $;

testResult := $.eclModule().add1(123, 127);

myAction := case(testResult, 
                 250 => output('pass test'),
		 fail('failed'));
myAction;				

