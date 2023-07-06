function [x,k]=meth_jacobi(a,b,x0,z)
k=1;
xnew=x0;
n=length(b);
for i=1:n
    s=0;
    for j=1:n
        if (i~=j)
            s=s+a(i,j)*xnew(j);
        end
    end
    xnew(i)=(b(i)-s)/a(i,i);
end

  xold=xnew;
while ((norm(xnew-xold))>z)
   k=k+1;
   xold=xnew;
for i=1:n
    s=0;
    for j=1:n
        if (i~=j)
            s=s+a(i,j)*xold(j);
        end
    end
    xnew(i)=(b(i)-s)/a(i,i);
end
end
k
x=[];
for i=1:n
    x=[x;xnew(i)];
end
x
end

            