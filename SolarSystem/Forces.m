function [ F ] = Forces( q,m,n )
%FORCES Summary of this function goes here
%   Detailed explanation goes here
G=2.95912208286*10^-4;%Gravitational Constant

F=zeros(n,3);
%Calculate all ((Gmimj/||qi-qj||^3)(qi-qj)) for all unique pairs
for i=1:n
    for j=1:n
        if(i~=j)
            qDiff=q(i,:)-q(j,:);
            F(i,1)=F(i,1)+m(j)/abs(qDiff(1,1));
            F(i,2)=F(i,2)+m(j)/abs(qDiff(1,2));
            F(i,3)=F(i,3)+m(j)/abs(qDiff(1,3));
        end
    end
    F(i,:)=G*m(i)*F(i,:);
end

end

