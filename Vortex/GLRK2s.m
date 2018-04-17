clear;

%PROGRAM PARAMETERS

T=1000;
s=2;%Stages
d=2;%Number of dimensions
n=3;%Number of particles


a=[1/4, 1/4-sqrt(3)/6; 1/4+sqrt(3)/6, 1/4];%Runge-Kutta array
b=[1/2;1/2];%Weights of quadrature rule
c=[1/2-sqrt(3)/6;1/2+sqrt(3)/6];%Nodes

dt=0.1;%Time increment


Z1=zeros(3,2);
Z2=zeros(3,2);
z=zeros(3,2);



Gamma=zeros(3,1);

%Initialize Gamma 
Gamma(:,:)=1;

%Initialize position vectors of 3 points
x=[-1;1;0];
y=[0;0;1];

z = [x;y];


SystemMomentum=P(Gamma,x,y,n);
fprintf('%s\n',"Initial system state");
fprintf('%s %d\n',"Point vortex quantity: ",n);
fprintf('%s %d\n',"H: ",H(Gamma,x,y,n));
fprintf('%s %d\n',"Px: ",SystemMomentum(1));
fprintf('%s %d\n',"Py: ",SystemMomentum(2));
fprintf('%s %d\n',"Lz: ",L(Gamma,x,y,n));
Disp([x,y])


for t=1:T

Z1 = z + dt*(a(1,1)*f(t,Gamma,Z1(1:n,1),Z1(n+1:2*n),n)+...
    a(1,2)*f(t,Gamma,Z2(1:n,1),Z2(n+1:2*n),n));
Z2 = z + dt*(a(2,1)*f(t,Gamma,Z1(1:n,1),Z1(n+1:2*n),n)+...
    a(2,2)*f(t,Gamma,Z2(1:n,1),Z2(n+1:2*n),n));
z = z + dt*(b(1)*f(t,Gamma,Z1(1:n,1),Z1(n+1:2*n),n) + ...
    b(2)*f(t,Gamma,Z2(1:n,1),Z2(n+1:2*n),n));

end
x=z(1:n);
y=z(n+1:2*n);
SystemMomentum=P(Gamma,x,y,n);
fprintf('%s\n',"Final system state");
fprintf('%s %d\n',"Point vortex quantity: ",n);
fprintf('%s %d\n',"H: ",H(Gamma,x,y,n));
fprintf('%s %d\n',"Px: ",SystemMomentum(1));
fprintf('%s %d\n',"Py: ",SystemMomentum(2));
fprintf('%s %d\n',"Lz: ",L(Gamma,x,y,n));

Disp([x,y])

