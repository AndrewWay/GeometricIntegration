
function [ res ] = f( Gamma,q,n )
%F Summary of this function goes here
%   Detailed explanation goes here
    
res=[dHdy(Gamma,x,y,n)./Gamma;-dHdx(Gamma,x,y,n)./Gamma];
end

