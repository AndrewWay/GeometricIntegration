function [  ] = Disp( M )
%DISP Summary of this function goes here
%   Detailed explanation goes here
fprintf("%17s %10s\n","x","y")
for i=1:size(M,1)
    fprintf("%6s%1d","Point",i);
    for j=1:size(M,2)
        fprintf("%10.2f ",M(i,j));
    end
    fprintf("\n");
end

end

