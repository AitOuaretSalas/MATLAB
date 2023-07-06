function [x,k] = gauss_seidel (a,b,y,z)
k=1;
x= meth_seidel(a,b,y);

while ( abs(x-y)>z)
 y=x;  k=k+1;
x = meth_seidel(a,b,y);
  
end