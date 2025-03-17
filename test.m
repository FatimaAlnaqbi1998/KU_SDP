clear all

a = 1;
b = 2;
c = a + b;
v= a+b;
g=9.81;
z0=100;
x0=[0; 0; z0; 0 ; 0; 0 ];
Vz0=0;
tspan=0:0.1:200;
options=odeset('Events', @groundevent);
[t,X]=ode45(@freeFall,tspan,x0,options);

z=X(:,3);
vz=X(:,6);

%

figure;
subplot(2,1,1);
plot(t, z, 'b', 'Linewidth',2);
xlabel('Time(s)');
ylabel('height(m)');
title('object Free Fall');
grid on;

subplot(2,1,2);
plot(t, vz, 'g', 'Linewidth',2);
xlabel('Time(s)');
ylabel('velocity(m/s)');
title('velocity vs time');
grid on;
