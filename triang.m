function[a,b]=triang(a,b)
[n,s]=size(a);
for k=1:n-1
    if (a(k,k)~=0)
        for i=k+1:n
            c=a(i,k)/a(k,k);
            for j=1:n
                a(i,j)=a(i,j)-c*a(k,j);
            end
            b(i)=b(i)-c*b(k);
        end
    end
end
end