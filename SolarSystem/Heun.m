InitializeParameters

J = zeros(2*n,2*n);
%Initialize J matrix
for i=1:n
    J(i,i+n)=1;
    J(i+n,i)=-1;
end

%Initialize solar system q, p, m vectors
ICSolarSystem
p=zeros(n,3);
for i=1:n
    p(i,:)=m(i)*qdot(i,:);
end

z=zeros(2*n,3);
Z1=zeros(2*n,3);
Z2=zeros(2*n,3);

fprintf('%s %d\n',"Initial energy: ",H(q,p,m,n));
InitialEnergy=H(q,p,m,n);
%Symplectic Euler Method
%q'=q+dt*Hp(q,p')
%p'=p+dt*Hq(q,p')

z=[q;p];

%Calculate p and q vectors for T time steps 
for t=1:T
    EnergyDiff(t)=abs(InitialEnergy-H(q,p,m,n));
    allQ(t,:,:)=q(:,:);
    Time(t)=t*dt;
    %Calculate stage matrix Z1
    Z1=z;
    %Calculate stage matrix Z2
    Z2=z+dt*[Hp(q,p,m,n);-Hq(q,p,m,n)];
    %Calculate z=(q,p);
    z=z+0.5*dt*([Hp(Z1(1:n,:),Z1(n+1:2*n,:),m,n);-Hq(Z1(1:n,:),Z1(n+1:2*n,:),m,n)]+...
    [Hp(Z2(1:n,:),Z2(n+1:2*n,:),m,n);-Hq(Z2(1:n,:),Z2(n+1:2*n,:),m,n)]);
    q=z(1:n,:);
    p=z(n+1:2*n,:);
end

plot(Time,EnergyDiff)
title('Absolute Error of Energy over Time (Heun, dt=1)');
ylabel('Absolute Error');
xlabel('Days');
fprintf('%s %d\n',"Final energy: ",H(q,p,m,n));