function [ Energy ] = H( Gamma, x,y, n )
%H Summary of this function goes here
%   Detailed explanation goes here
Energy=0;
for i=1:n
    for j=1:n
        if(i~=j)
            Energy = Energy + Gamma(i)*Gamma(j)*log(r(i,j,x,y));
        end
    end
end

Energy=-1*Energy/(4*pi);

