n0=0.1;
n00=0.011;
gqn0=256e-6;
v=10;
K1=2*pi*n0*sqrt(gqn0*v);
K2=2*pi*n00*v;
for j=1:100000
    t1(j)=t(j);
end
for i1=3:100002
    j1=i1-2;
    a(j1)=simout(i1);
    j11=j1+1;
    a(100001)=0;
    ad(j1)=(a(j11)-a(j1))/0.001;
end
for i2=300001:400000
    j2=i2-300000;
    b(j2)=simout(i2);
    j22=j2+1;
    b(100001)=0;
    bd(j2)=(b(j22)-b(j2))/0.001;
end
for i3=397:100396
    j3=i3-396;
    c(j3)=simout(i3);
    j33=j3+1;
    c(100001)=0;
    cd(j3)=(c(j33)-c(j3))/0.001;
end
for i4=300398:400397
    j4=i4-300397;
    d(j4)=simout(i4);
    j44=j4+1;
    d(100001)=0;
    dd(j4)=(d(j44)-d(j4))/0.001;
end
la=a';lad=ad';
lb=b';lbd=bd';
lc=c';lcd=cd';
ld=d';ldd=dd';
lt=t1';

figure(1)
subplot(2,2,3)
plot(t1,d(1:100000),'k');
title('前桥左侧轮位移激励')
xlabel('时间(s)');
ylabel('位移（m）');

subplot(2,2,4)
plot(t1,b(1:100000),'k');
title('后桥左侧轮位移激励')
xlabel('时间(s)');
ylabel('位移（m）');

subplot(2,2,1)
plot(t1,c(1:100000),'k');
title('前桥右侧轮位移激励')
xlabel('时间(s)');
ylabel('位移（m）');

subplot(2,2,2)
plot(t1,a(1:100000),'k');
title('后桥右侧轮位移激励')
xlabel('时间(s)');
ylabel('位移（m）');


figure(2)
subplot(2,2,1)
plot(t1,ad,'k');
title('前桥左侧轮速度')
xlabel('时间(s)');
ylabel('速度（m/s）');

subplot(2,2,2)
plot(t1,bd,'k');
title('前桥右侧轮速度')
xlabel('时间(s)');
ylabel('速度（m/s）');

subplot(2,2,3)
plot(t1,cd,'k');
title('后桥左侧轮速度')
xlabel('时间(s)');
ylabel('速度（m/s）');

subplot(2,2,4)
plot(t1,dd,'k');
title('后桥右侧轮速度')
xlabel('时间(s)');
ylabel('速度（m/s）');