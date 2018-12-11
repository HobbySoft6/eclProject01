import $;

testResult := $.eclModule().add1(123, 127);

myAction := case(testResult, 
                 250 => output('pass test1'),
		 fail('failed'));
myAction;				

testResult1 := $.ecldir.eclModule1().sub1(52, 22);

myAction1 := case(testResult1, 
                 30 => output('pass test2'),
		 fail('failed'));
myAction1;	
