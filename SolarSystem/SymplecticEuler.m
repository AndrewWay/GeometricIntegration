InitializeParameters

%Initialize solar system q, p, m vectors
ICSolarSystem
p=zeros(n,3);
for i=1:n
    p(i,:)=m(i)*qdot(i,:);
end

fprintf('%s %d\n',"Initial energy: ",H(q,p,m,n));
InitialEnergy=H(q,p,m,n);
%Symplectic Euler Method
%q'=q+dt*Hp(q,p')
%p'=p+dt*Hq(q,p')

%Calculate p and q vectors for T time steps 
for t=1:T
    EnergyDiff(t)=abs(InitialEnergy-H(q,p,m,n));
    allQ(t,:,:)=q(:,:);
    Time(t)=t*dt;
    %Calculate the momentum vectors for the next time step
    %p'=p-dt*Hq(q,p')
    p=p-dt*Hq(q,p,m,n);

    %Calculate the position vectors for the next time step
    %q'=q+dt*Hp(q,p')
    q=q+dt*Hp(q,p,m,n);
end



OrbitPlot(allQ,n)
plot(Time,EnergyDiff)
title('Absolute Error of Energy over Time (Symplectic Euler, dt=1)');
ylabel('Absolute Error');
xlabel('Days');
fprintf('%s %d\n',"Final energy: ",H(q,p,m,n));