sets
i/A,B/
j/S,T/
k/1*3/;
parameters
d(k)/1 60,2 40,3 70/
Cap(i)/A 100,B 90/;
table c(i,j)
    S   T
A   2   5
B   7   4;
table cp(j,k)
    1   2   3
S   3   4   7
T   2   5   3;
variables
Z
integer variable x(i,j);
integer variable y(j,k);
equations
objectivefunction
co1(k)
co2(i)
co3(j);
objectivefunction .. z =e= sum((i,j),x(i,j)*c(i,j)) + sum((j,k),y(j,k)*cp(j,k));
co1(k) .. sum(j,y(j,k)) =g= d(k);
co2(i) .. sum(j,x(i,j)) =l= cap(i);
co3(j) .. sum(i,x(i,j)) =g= sum(k,y(j,k));
model supplychain1 /all/;
solve supplychain1 using MIP minimizing Z;
display Z.L,x.L,Y.L;