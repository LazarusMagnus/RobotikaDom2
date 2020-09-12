close all
figure;
subplot(2,1,1)
plot(0:dt:T+dt,Q(1,:))
title('Unutrasnje q_1 q_2')
hold on
plot(0:dt:T,q_ref(1,:))
legend('ostvareno','referentno')
xlabel('t [s]')

subplot(2,1,2)
plot(0:dt:T+dt,Q(2,:))

hold on
plot(0:dt:T,q_ref(2,:))
legend('ostvareno','referentno')
xlabel('t [s]')

figure;
subplot(2,1,1)
plot(0:dt:T+dt,dQ(1,:))
title('Brzine dq_1 dq_2')
hold on
plot(0:dt:T,dq_ref(1,:))
legend('ostvareno','referentno','Location',"best")
xlabel('t [s]')

subplot(2,1,2)
plot(0:dt:T+dt,dQ(2,:))
hold on
plot(0:dt:T,dq_ref(2,:))
legend('ostvareno','referentno','Location',"best")
xlabel('t [s]')

figure;
plot(0:dt:T+dt,Tauu(1,:))
title('Momenti za prvi zglob')
hold on
plot(0:dt:T+dt,Tauufb(1,:))
plot(0:dt:T+dt,Tauuff(1,:))
legend('\tau','\tau_{FB}','\tau_{FF}')
xlabel('t [s]')

figure;
plot(0:dt:T+dt,Tauu(2,:))
title('Momenti za drugi zglob')
hold on
plot(0:dt:T+dt,Tauufb(2,:))
plot(0:dt:T+dt,Tauuff(2,:))
legend('\tau','\tau_{FB}','\tau_{FF}')
xlabel('t [s]')

figure;
title('Unutrasnja ubrzanja')
subplot(2,1,1)
plot(0:dt:T+dt,ddQ(1,:))
hold on
plot(0:dt:T,ddq_ref(1,:))
xlabel('t [s]')
legend('ostvareno','referentno','Location',"best")
title('Unutrasnje ubrzanje 1 i 2')
subplot(2,1,2)
plot(0:dt:T+dt,ddQ(2,:))

hold on
plot(0:dt:T,ddq_ref(2,:))
xlabel('t [s]')
legend('ostvareno','referentno','Location',"best")

figure;
subplot(2,1,1)
plot(0:dt:T+dt,Xd(1,:))
title('Spoljasnje x y')
hold on
plot(0:dt:T+dt,Xdref(1,:))
legend('ostvareno','referentno','Location',"best")
xlabel('t [s]')

subplot(2,1,2)
plot(0:dt:T+dt,Xd(2,:))
hold on
plot(0:dt:T+dt,Xdref(2,:))
legend('ostvareno','referentno','Location',"best")
xlabel('t [s]')

figure;
subplot(2,1,1)
plot(0:dt:T+dt,dXd(1,:))
title('Spoljasnje v_x v_y')
hold on
plot(0:dt:T+dt,dXdref(1,:))
legend('ostvareno','referentno','Location',"best")
xlabel('t [s]')

subplot(2,1,2)
plot(0:dt:T+dt,dXd(2,:))
hold on
plot(0:dt:T+dt,dXdref(2,:))
legend('ostvareno','referentno','Location',"best")
xlabel('t [s]')


figure;
plot(Xd(1,:),Xd(2,:))
title('Trajektorija')
hold on
plot(Xdref(1,:),Xdref(2,:))
legend('ostvareno','referentno')
xlabel('x')
ylabel('y')