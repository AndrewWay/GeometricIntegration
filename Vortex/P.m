function [ p ] = P( Gamma,q,n )
%P Summary of this function goes here
%   Detailed explanation goes here


if(~isvector(x))
   fprintf("%s\n","WARNING: non-vector x passed to P function"); 
end

if(~isvector(y))
   fprintf("%s\n","WARNING: non-vector y passed to P function"); 
end


p = zeros(1,2);

for i=1:n
    p=p+Gamma(i)*[y(i),-1*x(i)];
end

end

