function [ res ] = Hq(q,p,m,n)
%HQ Summary of this function goes here
%   Detailed explanation goes here
G=2.95912208286*10^-4;%Gravitational Constant

res=zeros(n,3);
%Calculate all ((Gmimj/||qi-qj||^3)(qi-qj)) for all unique pairs
for i=1:n
    for j=1:n
        if(i~=j)
            qDiff=q(i,:)-q(j,:);
            res(i,:)=res(i,:)+(m(j)/vecLength(qDiff)^3)*qDiff;
        end
    end
    res(i,:)=G*m(i)*res(i,:);
end

end