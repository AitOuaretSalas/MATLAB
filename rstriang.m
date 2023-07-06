function [x]= rstriang(a,b)
[L,U]=decop_LU(a);
[y]=rstrianginf(L,b);
[x]=rstriangsup(U,y);
end