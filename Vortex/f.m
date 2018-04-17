
function [ res ] = f( Gamma,q,n )
%F Summary of this function goes here
%   Detailed explanation goes here
    
res=[dHdy(Gamma,q,n)./Gamma,-dHdx(Gamma,q,n)./Gamma];
end

