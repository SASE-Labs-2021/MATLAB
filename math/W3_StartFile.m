%% Title Card
%{
    Author: Abigail Chiaokhiao
    Purpose: SASE Labs Workshop 3/3 - MATLAB Mathematics
%}
%% Polynomials
poly = [7 1 0 3 0 2]; % 7x^5 + x^4 + 3x^2 + 2
polyval(poly,3)
%{
x = 1:0.5:10; 
y = 5 + 4*cos(x);
p = polyfit(x,y,%)
x2 = 1:0.1:10;
y2 = polyval(p,x2);
plot(x,y,'r*',x2,y2,'b-')
%}
%% Basic Matrix Functions
A = [1 2 3; 4 5 6; 7 8 9];
B = [5 6 3; 1 7 8; 9 4 2];
% Transpose
T1 = A.'
T2 = transpose(A)
% Powers
P1 = A^5
P2 = mpower(A,5)
% Cross Product
cP = cross(A,B)
%% Eigenvalues/vectors
A =[1 2 0; 2 1 0; 0 0 -3];
[P,D] = eig(A)
v1 = [P(1,1); P(2,1); P(3,1)];
v2 = [P(1,2); P(2,2); P(3,2)];
v3 = [P(1,3); P(2,3); P(3,3)];
eV1_m_v1 = A*v1
eV2_m_v2 = A*v2
eV3_m_v2 = A*v3
%% Decomposition
format rat
B = [1 0 3 12; 3 2 0 32;0 -3 2 2];
A = B(:,1:3)
b = B(:,end)
rrefSolve = rref(B)
linSolve = linsolve(A,b)
invSolve = inv(A)*b
othSolve = A\b
%% ODEs - Stiff
tspan = [0 2];
y0 = 0.5;
[t,y] = ode23s(@(t,y) -7*t+4, tspan, y0);
plot(t,y,'o-r')
%% ODEs - Nonstiff
dy = @(t,y) -3*y + 5*cos(2*t).*sin(t);
y0 = -5:5; % There will be 11 lines
tspan = [0 3];
[t,y] = ode45(dy,tspan,y0);
plot(t,y, 'LineWidth', 1.5)
grid on
