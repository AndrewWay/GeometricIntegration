clear;
dt=1;
years=10;
days=365*years;
T=days/dt;
G=2.95912208286e-4; % Gravitational constant
n=10;%Number of bodies
Time=zeros(T,1);%Time array
allQ=zeros(T,n,3);
EnergyDiff=zeros(T,1);
