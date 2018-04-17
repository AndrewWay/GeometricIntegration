function [ l ] = L( Gamma,x,y,n )
%L Summary of this function goes here
%   Detailed explanation goes here

if(~isvector(x))
   fprintf("%s\n","WARNING: non-vector x passed to L function"); 
end

if(~isvector(y))
   fprintf("%s\n","WARNING: non-vector y passed to L function"); 
end

l=0;
for i=1:n
    l=l+Gamma(i)*(x(i)^2+y(i)^2);
end

l=-0.5*l;

end

