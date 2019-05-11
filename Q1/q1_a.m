syms x1 x2 f(x1,x2)
f(x1,x2)=3*x1^2 - 2*x1*x2 + 4*x1 + x2^2 + 3*x2;
% x1 and x2 are references
x1=0;
x2=0;
firstf=f(x1,x2);
fnew=firstf;


iteration = 4;
h= [1 0.5 0.25 0.125]; % changes of step magnitude

for m= 1: iteration
    for i=1:10  %  We try for 10 times for the same step magnitude
        step=h(m);
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

x1
x2
result = fnew
