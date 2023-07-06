function [x,k] =jacob_meth(a,b,y,z)
k=1;
x= PIjacobi(a,b,y);
while (norm(a*x'-b)<z)
    y=x;
    x= PIjacobi(a,b,y);
    k=k+1;
end
end