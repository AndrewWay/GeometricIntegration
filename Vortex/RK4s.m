clear;

T=1000;
n=3;
Gamma=zeros(n,1);

%Initialize Gamma 
Gamma(:,:)=1;

%Initialize position vectors of 3 points
x=[-1;1;0];
y=[0;0;1];

z = [x;y];

SystemMomentum=P(Gamma,z,n);
fprintf('%s\n',"Initial system state");
fprintf('%s %d\n',"Point vortex quantity: ",n);
fprintf('%s %d\n',"H: ",H(Gamma,z,n));
fprintf('%s %d\n',"Px: ",SystemMomentum(1));
fprintf('%s %d\n',"Py: ",SystemMomentum(2));
fprintf('%s %d\n',"Lz: ",L(Gamma,z,n));

F = @(z) f(Gamma,z,n);
F(z)

fprintf('%s\n',"Final system state");
fprintf('%s %d\n',"Point vortex quantity: ",n);
fprintf('%s %d\n',"H: ",H(Gamma,[z(1:3),z(4:6)],n));
fprintf('%s %d\n',"Px: ",SystemMomentum(1));
fprintf('%s %d\n',"Py: ",SystemMomentum(2));
fprintf('%s %d\n',"Lz: ",L(Gamma,[z(1:3),z(4:6)],n));
