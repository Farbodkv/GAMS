sets
i/1,2,3/
T/t/;
table c(T,i)
    1   2   3
t   7   5   2;
parameters
cop1(i) /1 1,2 0,3 1/
cop2(i) /1 0,2 4,3 -1/
variables
Z
variable x(i);
equation
of
co1
co2
co3
co4(i);
of .. Z =e= sum((i,T),x(i)*c(T,i));
co1 .. sum(i,cop1(i)*x(i)) =e= 6;
co2 .. sum(i,cop2(i)*x(i)) =g= 5;
co3 .. sum(i,x(i)) =l= 10;
co4(i) .. x(i) =g= 0;
model supplychain1 /all/;
solve supplychain1 using MIP minimizing Z;
display Z.L,x.L;
