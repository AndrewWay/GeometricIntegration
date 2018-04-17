function [ res ] = dHdx( Gamma,q,n )

%Assumes q(:,1) is a column vector containing the x coordinates of 
%the n point vortices

res=zeros(n,1);

for i=1:n
    for j=1:n
        res(i,1) = res(i,1) + Gamma(i)*Gamma(j)*r(i,j,q)*(q(i,1)-q(j,1)); 
    end
end
res(:,:)=-1*res(:,1)/(4*pi);
end

