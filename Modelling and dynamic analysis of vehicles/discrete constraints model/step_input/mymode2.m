format compact;
clear;
tol=1.0e-12;
trace=0.;
tstart=0;
tend=30;
d=0.01;
w0=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]';

[time,wout]=ode45('mymode1',tstart,tend,w0,tol,trace);
figure(1)
plot(time,wout(:,1));
title('11��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(2)
plot(time,wout(:,2));
title('12��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(3)
plot(time,wout(:,3));
title('13��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(4)
plot(time,wout(:,4));
title('21��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(5)
plot(time,wout(:,5));
title('22��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(6)
plot(time,wout(:,6));
title('23��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(7)
plot(time,wout(:,7));
title('31��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(8)
plot(time,wout(:,8));
title('32��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(9)
plot(time,wout(:,9));
title('33��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(10)
plot(time,wout(:,10));
title('f1��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(11)
plot(time,wout(:,11));
title('f2��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(12)
plot(time,wout(:,12));
title('f3��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(13)
plot(time,wout(:,13));
title('r1��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(14)
plot(time,wout(:,14));
title('r2��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(15)
plot(time,wout(:,15));
title('r3��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');
