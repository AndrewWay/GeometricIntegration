function [ p ] = P( Gamma,q,n )
%P Summary of this function goes here
%   Detailed explanation goes here

p = zeros(1,2);

for i=1:n
    p=p+Gamma(i)*[q(i,2),-1*q(i,1)];
end

end

