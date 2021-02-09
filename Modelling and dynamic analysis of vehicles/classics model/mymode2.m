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
title('����ƽ��ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(2)
plot(time,wout_tr(:,2),'k');
title('������ת��ʱ��-ת��')
xlabel('time(s)');
ylabel('������ת��(rad)');

figure(3)
plot(time,wout_tr(:,3),'k');
title('�������ת��ʱ��-ת��')
xlabel('time(s)');
ylabel('�������ת��(rad)');

figure(4)
plot(time,wout_tr(:,4),'k');
title('ǰ���ڲ�ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(5)
plot(time,wout_tr(:,5),'k');
title('�����ڲ�ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(6)
plot(time,wout_tr(:,6),'k');
title('ǰ�����ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');

figure(7)
plot(time,wout_tr(:,7),'k');
title('�������ʱ��-λ��')
xlabel('time(s)');
ylabel('z��λ��(m)');
