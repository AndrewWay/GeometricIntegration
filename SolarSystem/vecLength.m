
function [ l ] = vecLength(v)
%VECLENGTH Summary of this function goes here
%   Detailed explanation goes here
if(isvector(v))
    
else
   fprintf('%s\n',"ERROR: You passed a non-vector object to vecLength"); 
end
l=sqrt(v(1)^2+v(2)^2+v(3)^2);
end

