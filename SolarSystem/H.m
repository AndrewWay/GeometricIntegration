function [ res ] = H( q,p,m,n)
%HQ Summary of this function goes here
%   Detailed explanation goes here
G=2.95912208286*10^-4;%Gravitational Constant


kinetic=0;
potential=0;

for i=1:n
    kinetic=kinetic+(vecLength(p(i,:))^2)/m(i); 
end
kinetic=0.5*kinetic;

%Calculate H, the Hamiltonian for the n body problem
for i=1:n-1
    for j=i+1:n
        potential=potential+G*m(i)*m(j)/norm(q(i,:)-q(j,:));
    end
end
res = kinetic-potential;

end

