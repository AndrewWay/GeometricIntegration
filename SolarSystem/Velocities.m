function [ v ] = Velocities( p,m,n)
%HQ Summary of this function goes here
%   Detailed explanation goes here

v=zeros(n,3);

for i=1:n
    v(i,:)=p(i,:)/m(i);
end

end

