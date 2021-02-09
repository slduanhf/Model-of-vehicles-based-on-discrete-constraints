format compact;
clear;
tol=1.0e-12;
trace=0.;
tstart=0;
tend=15;
d=0.01;
w0=[0 0 0 0 0 0 0 0 0 0 0 0 0 0]';

[time,wout_tr]=ode45('mymode1',[0:0.01:15],w0,tol,trace);

figure(1)
plot(time,wout_tr(:,1),'k');
title('车身平移时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');

figure(2)
plot(time,wout_tr(:,2),'k');
title('车身俯仰转动时间-转角')
xlabel('time(s)');
ylabel('车身俯仰转角(rad)');

figure(3)
plot(time,wout_tr(:,3),'k');
title('车身侧倾转动时间-转角')
xlabel('time(s)');
ylabel('车身侧倾转角(rad)');

figure(4)
plot(time,wout_tr(:,4),'k');
title('前桥内侧时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');

figure(5)
plot(time,wout_tr(:,5),'k');
title('后桥内侧时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');

figure(6)
plot(time,wout_tr(:,6),'k');
title('前桥外侧时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');

figure(7)
plot(time,wout_tr(:,7),'k');
title('后桥外侧时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');
