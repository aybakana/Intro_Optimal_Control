clear all, close all, clc;
syms Kp Ki s x1 x2 f(x1,x2) 
Rs=1/s
Fs=Kp+Ki/s
Gs=(s+1.75)/(s^3-s);
Es=collect((Rs/(1+Gs*Fs)),s)
% Es =
%                   (4*s^3 - 4*s)
%   ------------------------------------------------
%   (4*s^4 + (4*Kp - 4)*s^2 + (4*Ki + 7*Kp)*s + 7*Ki)
c3=4;
c2=0;
c1=-4;
c0=0;
d4=4;
d3=0;
d2=4*Kp - 4;
d1=4*Ki + 7*Kp;
d0=7*Ki;

I4=(c3^2*(-d0^2*d3+d0*d1*d2)+(c2^2-2*c1*c3)*d0*d1*d4+(c1^2-2*c0*c2)*d0*d3*d4+c0^2*(-d1*d4^2+d2*d3*d4))/(2*d0*d4*(-d0*d3^2-d1^2*d4+d1*d2*d3));
f(Ki,Kp)=I4


% Hooke Jeeves
% syms x1 x2 f(x1,x2)
% f(x1,x2)=3*x1^2-2*x1*x2+x2^2+4*x1+3*x2;
% Kp and Ki are references
Ki=2;
Kp=20;
% We did not want to change all x1 and x2,
x1=10;
x2=20;
firstf=f(Ki,Kp);
fnew=firstf;

iteration = 6;
% We declare the step magnitudes as below;
h= [0.1 0.05 0.01 0.005 0.001 0.0005]; % changes of step magnitude
% NOTE: When we decreased the starting step, the error significanlty has decreased

for m= 1: iteration
    for i= 1:10   % NOTE When I decresed this value, the error significanlty has decreased 
      %  We try for 10 times for the same step magnitude
        step=h(m);
        tmp=fnew; % the value before the check
        if f(x1+step,x2)<f(x1,x2);
            fnew=f(x1+step,x2);
            x1=x1+step;
        elseif f(x1-step,x2)<f(x1,x2);
            fnew=f(x1-step,x2);
            x1=x1-step;
        end
        if f(x1,x2+step)<f(x1,x2);
            fnew=f(x1,x2+step);
            x2=x2+step;
        elseif f(x1,x2-step)<f(x1,x2);
            fnew=f(x1,x2-step);
            x2=x2-step;
        end
        
    end
    
end

Ki=x1
Kp=x2
fresult = fnew
sim('q2_a_simulation_PI')
max(ise)
%plot(y)



