x = [0: pi/20: 2*pi]
y1 = sin(x)
y2 = cos(x)
plot(x,y1,'r')
hold on;
plot(x,y2,'-*b')
xlabel('x-axis')
ylabel('y-axis')
legend('sin','cos')
title('lab1 toy example')
