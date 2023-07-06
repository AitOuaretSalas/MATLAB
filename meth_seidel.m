function [x]=meth_seidel(a,b,y)
n = length(b);
  for i=1:n
    s=0;v=0;
    for j=1:i-1
       
            s=s+a(i,j)*x(j);   
    end
      for j=i+1:n
       
            v=v+a(i,j)*y(j);   
      end
       x(i)=(b(i)-s-v)/a(i,i);
       
  end
end
            