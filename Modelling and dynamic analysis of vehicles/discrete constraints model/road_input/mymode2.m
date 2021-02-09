clear;
global f1_f1 f1d_f1d f3_f3 f3d_f3d r1_r1 r1d_r1d r3_r3 r3d_r3d in
in=xlsread('loadinput_data.xlsx');
f1_f1=(in(:,2));
f1d_f1d=(in(:,3));
f3_f3=(in(:,6));
f3d_f3d=(in(:,7));
r1_r1=(in(:,4));
r1d_r1d=(in(:,5));
r3_r3=(in(:,8));
r3d_r3d=(in(:,9));
tol=1.0e-12;
trace=0.;
tstart=0;
tend=15;
d=0.01;
w0=[-0.101 -0.07534 -0.06545 -0.101 -0.07534 -0.06545 -0.101 -0.07534 -0.06545 -0.01941 -0.01941 -0.01941 -0.01242 -0.01242 -0.01242 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]';

[time,wout]=ode45('mymode1',[0:0.001:99.999],w0,tol,trace);

subplot(2,2,1)
plot(time,wout(:,1));
title('11点时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');

subplot(2,2,2)
plot(time,wout(:,3));
title('13点时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');

subplot(2,2,3)
plot(time,wout(:,7));
title('31点时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');


subplot(2,2,4)
plot(time,wout(:,9));
title('33点时间-位移')
xlabel('time(s)');
ylabel('z向位移(m)');


figure(2)
subplot(2,2,1);
plot(time,f1_f1);
subplot(2,2,2);
plot(time,r1_r1);
subplot(2,2,3);
plot(time,f3_f3);
subplot(2,2,4);
plot(time,r3_r3);



a11=wout(:,1);a31=wout(:,7);a33=wout(:,9);
for ii=1:100000
    zb(ii)=(0.3/1.4)*a11(ii)+(1-0.9/3.95-0.3/1.4)*a31(ii)+0.9/3.95*a33(ii);
end
zbb=zb';
for i1=1:100000
    i11=i1+1;
    zb(100001)=0;
    zbd(i1)=(zb(i11)-zb(i1))/0.001;
end
zbbd=zbd';
figure(3)
plot(time,zb(1:100000));
title('车身上座位对应点时间-位移');
xlabel('time(s)');
ylabel('z向位移(m)');