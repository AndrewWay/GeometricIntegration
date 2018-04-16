function [ res ] = Hp( q,p,m,n)
%HQ Summary of this function goes here
%   Detailed explanation goes here

res=zeros(n,3);

for i=1:n
    res(i,:)=p(i,:)/m(i);
end

end

