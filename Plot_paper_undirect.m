%% Run the next code every time if you run a simulink model
x1=out.x1.Data;
x2=out.x2.Data;
x3=out.x3.Data;
x4=out.x4.Data;
t=out.x1.time;

%% Run the ``undirect_graph_consensus.slx'' and run the next code
u1=out.u1.Data;
u2=out.u2.Data;
u3=out.u3.Data;
u4=out.u4.Data;
sum1 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);

%% Run the ``undirect_graph_average_consensus.slx'' and run the next code
u11=out.u1.Data;
u12=out.u2.Data;
u13=out.u3.Data;
u14=out.u4.Data;
sum2 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);

%% Run the ``undirect_graph_compare_pioneer.slx'' and run the next code
u21=out.u1.Data;
u22=out.u2.Data;
u23=out.u3.Data;
u24=out.u4.Data;
sum3 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);

%% Run the ``undirect_graph_compare_TBG.slx'' and run the next code
u31=out.u1.Data;
u32=out.u2.Data;
u33=out.u3.Data;
u34=out.u4.Data;
sum4 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);




%%%%%%%%%%%%%%% Plot consensus errors %%%%%%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
semilogy(t,sum1,':','LineWidth',2.5);
hold on
semilogy(t,sum2,'-','LineWidth',2.5);
semilogy(t,sum3,'-.','LineWidth',2.5);
semilogy(t,sum4,'--','LineWidth',2.5);
ylabel('Consensus error','Interpreter','latex','FontSize',17.6);
xlabel("$t$ (s)",'Interpreter','latex','FontSize',17.6);
legend1 = legend({'protocol (7)','protocol (8)','protocol (11)','protocol (12)'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.596579173514734,0.67007936871241,0.308109018124584,0.256904758271717]);
%set(legend1,'Box','off');
grid on


%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%% Plot control input %%%%%%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
subplot(2,2,1)
plot(t,u1,':','LineWidth',2);
hold on
plot(t,u2,'-','LineWidth',2);
plot(t,u3,'-.','LineWidth',2);
plot(t,u4,'--','LineWidth',2);
title('$u_{i}$ in protocol (7)','Interpreter','latex','FontSize',12);
grid on

%
subplot(2,2,2)
plot(t,u11,':','LineWidth',2);
hold on
plot(t,u12,'-','LineWidth',2);
plot(t,u13,'-.','LineWidth',2);
plot(t,u14,'--','LineWidth',2);
title('$u_{i}$ in protocol (8)','Interpreter','latex','FontSize',12);
grid on

%
subplot(2,2,3)
plot(t,u21,':','LineWidth',2);
hold on
plot(t,u22,'-','LineWidth',2);
plot(t,u23,'-.','LineWidth',2);
plot(t,u24,'--','LineWidth',2);
title('$u_{i}$ in protocol (11)','Interpreter','latex','FontSize',12);
grid on


%
subplot(2,2,4)
plot(t,u31,':','LineWidth',2);
hold on
plot(t,u32,'-','LineWidth',2);
plot(t,u33,'-.','LineWidth',2);
plot(t,u34,'--','LineWidth',2);
title('$u_{i}$ in protocol (12)','Interpreter','latex','FontSize',12);
grid on
legend1 = legend({'Agent1','Agent2','Agent3','Agent4'},"FontName","Times New Roman",'FontSize',11);
set(legend1,'Orientation','horizontal','position',[0.172527009857362,0.00881515737628,0.678571419204985,0.049999998793715]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%








