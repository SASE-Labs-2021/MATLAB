%% Title Card
%{
    Author: Abigail Chiaokhiao
    Purpose: SASE Labs Workshop 1/3 - MATLAB Basics
%}
%% Comments
% Hey! Welcome to the first workshop! This is a comment
% The %% is to denote a section, sometimes you only want to run specific
% blocks, so you use those
%{
    If you want a multiple line comment,
    You need %{ & %} on separate lines
%}
%% Variables
var1 = 5;
var2 = 3;
[first, second, sum] = adding(5,3)
%% Arithmetic & Common Functions
ex = zeros(1,5);
% Common arithmetic
ex(1) = 4+5;
ex(2) = 10-2;
ex(3) = 4*5;
ex(4) = 27/3;
ex(5) = sqrt(144);
disp("Arithmetic array values:")
disp(ex)

%% Trig functions
sine = sin(ex(1))
cosine = cos(ex(2))
secant = sec(ex(3))
cotangent = cot(ex(4))
%% A few other useful functions
maxOEx = max(ex)
minOEx = min(ex)
%% Data Types
% Numbers
num1 = 5
num2 = 7.7

% Strings
greeting = "Hi";
name = "Abi";
sentence = greeting + " " + name
strlength(sentence)

% Characters
seq = 'ATCC';
thirdC = seq(3)
one = 'SASE';
two = 'Labs';
[one two]

% Special chars
specC1 = ' '' ' 
specC2 = '%%'
%% Matrices
matrix34 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
randM = 3*rand(3)
magicM = magic(3)
firColRM = randM(:,1);
inv(magicM);

% Arithmetic on a matrix
randM/3

% Matrix multiplication
matMult = randM*magicM
elementMult = randM.*magicM

% Concatenation
[randM,magicM]
[randM;magicM]

% Transpose
randM'
%% 2-D Line Plots Intro
xVals = 0:1:25;
yVals = 3*xVals+5; % 3x+5
ln = plot(xVals,yVals) %Add to this line
ln.Marker = 'o';
ln.MarkerFaceColor = 'm';
% x axis
xlabel('x')
% y axis
ylabel('y')
% title
title('Plot of a straight line')
yVals2 = -2*xVals+7;
hold on
plot(xVals,yVals2)
%% 3-D Surface Plots
[X,Y] = meshgrid(0:1:25);
Z = sin(X) + cos(Y);
subplot(1,2,1)
surf(X,Y,Z)
title("Surf Plot")
subplot(1,2,2)
mesh(X,Y,Z)
title("Mesh Plot")
%% Loops
for cats = 1:5
    bowls(cats) = cats*2;
end
totalB = bowls(end)

peeps = 3;
greeting = "Ayy wassup";
hellos = 0;
while hellos < peeps
    	disp(greeting)
		hellos = hellos + 1;
end
%% Conditional Statements
% if statements
i = 5;
if i < 0
		str = "That's negative";
elseif i > 0 && i < 10
    str = "That's a nice number";
else
    str = "Eh, idk if I like that number";
end
disp(str);

% switch statements
siblings = 4;
switch siblings
    case 0
        siboutput = "Alright only child";
    case 1
        siboutput = "Dos children I see";
    case 2
        siboutput = "Average sized family here (if you round)";
    otherwise
        siboutput = "Oh a big family here";
end
disp("Value comparing: " + siboutput)

siblings = 10;
switch true
    case siblings < 0
        siboutput1 = "Wait what";
    case siblings > 2 && siblings < 7
        siboutput1 = "This is higher than average";
    case siblings > 7
         siboutput1 = "Wth";
    otherwise
         siboutput1 = "You have an average family";
end
disp("Condition comparing: " + siboutput1)
%% Function creating
% Any function in the same file must go at the bottom
function [first, second, sum] = adding(num1,num2)
    first = num1;
    second = num2;
    sum = num1 + num2;
end