clear;

T=1000;
n=3;
Gamma=zeros(n,1);

tspan=[0 T];
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

Disp([x,y]);

F = @(t,z) f(t,Gamma,z(1:n,1),z(n+1:2*n,1),n);
z0=z;
[t,z] = ode45(F,tspan,z0);

zf=zeros(2*n,1);

for i=1:2*n
    zf(i)=z(T,i);
end

x=zf(1:n);
y=zf(n+1:2*n);
SystemMomentum=P(Gamma,x,y,n);
fprintf('%s\n',"Final system state");
fprintf('%s %d\n',"Point vortex quantity: ",n);
fprintf('%s %d\n',"H: ",H(Gamma,x,y,n));
fprintf('%s %d\n',"Px: ",SystemMomentum(1));
fprintf('%s %d\n',"Py: ",SystemMomentum(2));
fprintf('%s %d\n',"Lz: ",L(Gamma,x,y,n));

Disp([x,y]);

