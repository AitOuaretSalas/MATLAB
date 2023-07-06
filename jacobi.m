function [X,K] = jacobi (A , B ,Y ,ep)
K=1;
n = length (B);
for i=1:n
    somme = 0;
    for j=1:n
        if (j ~= i)
            somme = somme + (A(i,j)*Y(j));
        end
        X(i) = (B(i) - somme ) / A(i,i);
    end
end
f=abs(X-Y);
while (f< ep)
    Y = X;
    for i =1 : n
        somme =0;
        for j = 1:n
            if (i~=j)
                somme = somme + A(i,j) * Y(j);
            end
           X(i) = (B(i) - somme) / A(i,i); 
        end
        K=K+1;
        f=abs(X-Y)
    end
end
end