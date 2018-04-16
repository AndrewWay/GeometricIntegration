function [ output_args ] = OrbitPlot( Q,n)
%ORBITPLOT Summary of this function goes here
%   Detailed explanation goes here


figure

% Plot solution

for i=1:n

  plot3(Q(:,:,1),Q(:,:,2),Q(:,:,3),'color',rand(3,1));

  xlim([-50 50]);

  ylim([-50 50]);

  zlim([-50 50]);

  xlabel('AU');

  ylabel('AU');

  zlabel('AU');

end


end

