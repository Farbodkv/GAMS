sets
i/1,2,3/
j/A,B,C/;
parameters
d(j)/A 100,B 300,C 250/
Cap(i)/1 200,2 150,3 300/;
table c(i,j)
     A    B    C
1    4    6    8
2    10   14   8
3    5    7    10;
variables
Z
integer variable x(i,j);
equations
objectivefunction
co1(i)
co2(j);
objectivefunction .. z  =e= sum((i,j),x(i,j)*c(i,j));
co1(i) .. sum(j,x(i,j)) =e= Cap(i);
co2(j) .. sum(i,x(i,j)) =e= d(j);
model supplychain2 /all/;
solve supplychain2 using MIP minimizing Z;
display Z.L,x.L;