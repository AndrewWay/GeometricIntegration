function [ dist ] = r( i,j,x,y)
%R Summary of this function goes here
%   Detailed explanation goes here

dist = sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);

end

