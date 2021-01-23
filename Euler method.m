clc;
f=@(x,y)(2-exp(-3*x)-2*y); %Change function according to your ques
x0=input('Enter the initial value of x: ');
y0=input('Enter the initial value of y: ');
Xn=input('Enter the final value of x:' );
h=input('Enter the step-size of sub-intervals:');
n=(Xn-x0)/h;

for i=1:n
    if(x0<=Xn)
        y1=y0+h*f(x0,y0);
        x0=x0+h;
        y0=y1;
    else 
        break
        
    end
end
fprintf('The value of Y at x=%.4f is %.4f\n', Xn,y0);

