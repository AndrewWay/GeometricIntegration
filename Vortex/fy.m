function [ res ] = fy( Gamma,q,n )
%F Summary of this function goes here
%   Detailed explanation goes here
    
res=-dHdx(Gamma,q,n)./Gamma;

end


