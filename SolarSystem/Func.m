function F = Func( x,q,p,m,G,J,n,dt)
%FUNC Summary of this function goes here
%   Detailed explanation goes here



F=[q;p]+dt*J*[Hq(x(1:n,:),x(n+1:2*n,:),m,n);Hp(x(1:n,:),x(n+1:2*n,:),m,n)];
F=F-x;
end

