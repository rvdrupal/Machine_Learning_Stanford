function J = cc(X,y,theta0,theta1)
  
  m=length(y);
  j=zeros(m,1);
  for i=1:m
    j(i)=j(i)+(theta0+theta1*X(i)-y(i))^2*1/2*1/m;
  endfor
  J=sum(j);
  end
