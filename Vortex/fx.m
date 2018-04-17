function [ res ] = fx( Gamma,q,n )
%F Summary of this function goes here
%   Detailed explanation goes here
    
res = dHdy(Gamma,q,n)./Gamma;


end

