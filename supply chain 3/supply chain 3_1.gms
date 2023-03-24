variables
Z 
x1
x2
x3;
equations
objectivefunction
co1
co2
co3
co4
co5
co6;
objectivefunction .. Z =e= 7*x1 + 5*x2 + 2*x3;
co1 .. x1 + x3 =e= 6;
co2 .. 4*x2 - x3 =g= 5;
co3 .. x1 + x2 + x3 =l= 10;
co4 .. x1 =g= 0;
co5 .. x2 =g= 0;
co6 .. x3 =g= 0;
model supplychain1 /all/;
solve supplychain1 using MIP minimizing Z;
display Z.L,x1.L,x2.L,x3.L;