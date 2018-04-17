function [ l ] = L( Gamma,q,n )
%L Summary of this function goes here
%   Detailed explanation goes here

l=0;
for i=1:n
    l=l+Gamma(i)*(q(i,1)^2+q(i,2)^2);
end

l=-0.5*l;

end

