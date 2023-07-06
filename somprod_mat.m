function [s,p]=somprod_mat(A,B)
a=A+B;
b=A*B;
a=sum(a);
s=sum(a);
b=sum(b);
p=sum(b);
end
    
