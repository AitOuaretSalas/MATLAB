function [x]= PIjacobi(a,b,y);
n=length(b);
for i=1:n
    s=0;
    for j=1:n
    
    if (j~=i)
        s=s+a(i,j)*y(j);
    end
    end
x(i)=(b(i)-s)/a(i,i);
end
end