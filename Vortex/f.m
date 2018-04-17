
function [ res ] = f( Gamma,q,n )
%F Summary of this function goes here
%   Detailed explanation goes here
    
res=[fx(Gamma,[q(1:3),q(4:6)],n);fy(Gamma,[q(1:3),q(4:6)],n)];
end

