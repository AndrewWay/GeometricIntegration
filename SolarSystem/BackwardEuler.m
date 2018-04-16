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
    %Calculate the momentum vectors for the next time step
    %Calculate the position vectors for the next time step
    z=fsolve(Func(z,q,p,m,G,J,n,dt),zeros(20,3));
    q=z(1:n,:);
    p=z(n+1:2*n,:);
end

plot(Time,EnergyDiff)
title('Absolute Error of Energy over Time (Forward Euler, dt=1)');
ylabel('Absolute Error');
xlabel('Days');
fprintf('%s %d\n',"Final energy: ",H(q,p,m,n));