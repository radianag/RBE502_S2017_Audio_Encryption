clear all
sim('Sprott.slx');


figure(1)
plot(C1.time,C1.signals.values,C2.time,C2.signals.values)
xlabel('Time[s]')
ylabel('Units')
legend('Master','Slave')

figure(2)
plot3(C1M.signals.values(:,1),C1M.signals.values(:,2),C1M.signals.values(:,3))
xlabel('d(d(x))/(dtdt)')
ylabel('d(x)/dt')
zlabel('x')

figure(3)
plot(C1M.time,C1M.signals.values(:,1),C1M.time,C1M.signals.values(:,2),...
C1M.time,C1M.signals.values(:,3),C2M.time,C2M.signals.values(:,1),...
C2M.time,C2M.signals.values(:,2),C2M.time,C2M.signals.values(:,3))
legend('xdd_m','xd_m','x_m','xdd_s','xd_s','x_s');

figure(4)
plot(M.time,M.signals.values)
xlabel('Time[s]')
ylabel('Units')
%xlim([80 85])
%ylim([-1 1])