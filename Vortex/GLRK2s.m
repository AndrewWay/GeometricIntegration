%PROGRAM PARAMETERS

s=2;%Stages
d=2;%Number of dimensions
n=3;%Number of particles


a=[1/4, 1/4-sqrt(3)/6; 1/4+sqrt(3)/6, 1/4];%Runge-Kutta array
b=[1/2;1/2];%Weights of quadrature rule
c=[1/2-sqrt(3)/6;1/2+sqrt(3)/6];%Nodes

dt=0.1;%Time increment


Z1=zeros(2,3,2);
Z2=zeros(2,3,2);
z=zeros(2,3,2);



Gamma=zeros(3,1);

%Initialize Gamma 
Gamma(1,:)=1;

%Initialize position vectors of 3 points
z(1,1,:) = [-1;0];
z(1,2,:) = [1;0];
z(1,3,:) = [0;1];

%Initialize momentum vectors of 3 points 
z(2,1,1) = Gamma(1)*z(1,1,1);
z(2,1,2) = -Gamma(1)*z(1,1,2);
z(2,2,1) = Gamma(2)*z(1,2,1);
z(2,2,2) = -Gamma(2)*z(1,2,2);
z(2,3,1) = Gamma(3)*z(1,3,1);
z(2,3,2) = -Gamma(3)*z(1,3,2);



Z1 = z + dt*(a(1,1)*f(t+c(1)*dt,Z1)+a(1,2)*f(t+c(2)*dt,Z2));
Z2 = z + dt*(a(2,1)*f(t+c(1)*dt,Z1)+a(2,2)*f(t+c(2)*dt,Z2));
z = z + dt*(b(1)*f(t+c(1)*dt,Z1) + b(2)*f(t+c(2)*dt,Z2));

