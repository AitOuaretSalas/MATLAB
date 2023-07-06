function [L,U]=decop_LU(a)
[n,s]=size(a); L=eye(n); e=eye(n);
for k=1:n
    if (a(k,k)~=0)
        for i=k+1:n
        e(i,k)= -a(i,k)/a(k,k);
        end
        e
        a=e*a
        L=L*inv(e)
        e=eye(n);
    end
end
    U=a;
end
