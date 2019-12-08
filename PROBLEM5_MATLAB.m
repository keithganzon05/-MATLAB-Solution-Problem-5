n = (0:1:199);
x = input ('input x(n): ');

for z = 1:length(n)
    if n(z) == 0
        y(z) = -1.5*x(z) + 2*x(z+1) - 0.5*x(z+2);

    elseif n(z) <= 198
        y(z) = 0.5*x(z+1) - 0.5*x(z-1);
       
    elseif n(z) == 199
        y(z) = 1.5*x(z) - 2*x(z-1) + 0.5*x(z-2);
        
    end
end

plot(n,x,'--r','linewidth',0.5);
hold on;
plot(n,y,'b-');
hold off;
legend('x(n)','y(n)')
        