function [p]=parfait_x(n)
i=1;s=0;
while (i<n)
    if (mod(n,i)==0)
 s=s+i;
    end
 i=i+1;
end
if (s==n)
    p='vrai';
else
    p='foux';
end
end