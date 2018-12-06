EXPORT TestModule() := MODULE

export add1(integer a1, integer a2) := function
 export  a := a1 + a2;
	 output(a, named('thisisthec'));
	 return a;
	 end;
	 
export sub1(integer d1, integer d2) := function
 export  d := d1 - d2;
	 output(d, named('thisisthec'));
	 return d;
	 end;	 
  
	END;	 
