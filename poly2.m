clc
clear all
close all
x=[1 4 5 6 8]
y=[34 54 65 76 38]
plot (x,y,'o','markersize' ,10,'markerfacecolor','r' ,'markeredgecolor','k')
hold on

for N=1:5
    G(N,:)=[1,x(N),x(N)^2,x(N)^3,x(N)^4];
end
y=y'
m=inv(G)*y
xi=linspace(x(1),x(5),100); %increase the number of points for a smoother curve
for i=1:100
    G_interp(i,:)=[1,xi(i),xi(i)^2,xi(i)^3,xi(i)^4];
end
yi=G_interp*m;
plot(xi,yi);  %plot the fitted curve
xlabel('x');
ylabel('y');
title('4th degree polynomial fit');
legend('data points','fitted curve');
grid on;