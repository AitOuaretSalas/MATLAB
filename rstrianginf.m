function [y]=rstrianginf(a,b)
n= length (b);
y(1)=b(1)/a(1,1);
for i=2:n
    s=0;
    for j=1:i-1
        s=s+a(i,j)*y(j);
    end
   y(i)=(b(i)-s)/a(i,i)
end
end