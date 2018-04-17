function [ dist ] = r( i,j,q)
%R Summary of this function goes here
%   Detailed explanation goes here

dist = sqrt((q(i,1)-q(j,1))^2+(q(i,2)-q(j,2))^2);

end

