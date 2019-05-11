
clear all;
clc;
close all;

global Kp;
global Kd;
global x1 x2;
syms s; 
Kd = input('Kd: ');
Kp = input('Kp: ');


% Hooke Jeeves

% We did not want to change all x1 and x2 from the code
x1=Kd;
x2=Kp;
firstf=f(Kd,Kp);
fnew=firstf;

iteration = 4;
% We declare the step magnitudes as below;
h= [1 0.5 0.25 0.125]; % changes of step magnitude
% NOTE: When we decreased the starting step, the error significanlty has decreased

for m= 1: iteration
    for i= 1:1000   % NOTE When I decreased this value, the error significanlty has decreased 
      %  We try for 10 times for the same step magnitude
        step=h(m);
        tmp=fnew; % the value before the check
        if f(x1+step,x2)<f(x1,x2);
            fnew=f(x1+step,x2)
            x1=x1+step;
            
        elseif f(x1-step,x2)<f(x1,x2);
            fnew=f(x1-step,x2)
            x1=x1-step;
        end
        if f(x1,x2+step)<f(x1,x2);
            fnew=f(x1,x2+step)
            x2=x2+step;
        elseif f(x1,x2-step)<f(x1,x2);
            fnew=f(x1,x2-step)
            x2=x2-step;
        end
        if fnew==tmp
            break;
        end
    end
    
end

Kd=x1
Kp=x2
itse = fnew

