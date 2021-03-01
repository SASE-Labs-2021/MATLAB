k = [1e9 1.5e5 1];
% An extra vector which are each a variable used in 
% the function later
c0 = [1e-5 1e-3 0 0];
% Corresponding to multiple initial conditions
tspan = [0 150];
[t, c] = ode23s(@odeSolve, tspan, c0,[], k);
subplot(1,2,1)
plot(t,c(:,2),'-g',t,c(:,3))
title('1st and 2nd');
subplot(1,2,2)
plot(t,c(:,1),'-b',t,c(:,4),'-m')
title('3rd and 4th');

function dydt = odeSolve(t,c,k)
% r1, r2, r3 are variables
% calculated using constants
% from the initial condition
% and the other given constants in k
r1 = k(1)*c(1)*c(2); 
r2 = k(2)*c(4);
r3 = k(3)*c(4);
% CS, CE, CES, CP are the equations
% dependent on r1, r2, r3
CS = -r1+r2;
CE = -r1+r2+r3;
CES = r1-r2-r3;
CP = r3;
dydt = [CE; CS; CP; CES];
% Denotes each new point calculated into a matrix
end
