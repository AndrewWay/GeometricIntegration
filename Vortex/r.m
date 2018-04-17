function [ dist ] = r( i,j,x,y)
%R Summary of this function goes here
%   Detailed explanation goes here

dist = sqrt((x(i,1)-x(j,1))^2+(y(i,1)-y(j,1))^2);

end

