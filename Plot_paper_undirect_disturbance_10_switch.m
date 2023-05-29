%% Run the next code every time if you run a simulink model
x1=out.x1d.Data;
x2=out.x2d.Data;
x3=out.x3d.Data;
x4=out.x4d.Data;
x5=out.x5d.Data;
x6=out.x6d.Data;
x7=out.x7d.Data;
x8=out.x8d.Data;
x9=out.x9d.Data;
x10=out.x10d.Data;
t=out.x1d.time;


%%%% Laplacian matrix %%%%%%%
L1 = 0.5*[2 -1 0 0 0 0 0 0 0 -1;
 -1 2 -1 0 0 0 0 0 0 0;
 0 -1 2 -1 0 0 0 0 0 0;
 0 0 -1 2 -1 0 0 0 0 0;
 0 0 0 -1 2 -1 0 0 0 0;
 0 0 0 0 -1 2 -1 0 0 0;
 0 0 0 0 0 -1 2 -1 0 0;
 0 0 0 0 0 0 -1 2 -1 0;
 0 0 0 0 0 0 0 -1 2 -1;
 -1 0 0 0 0 0 0 0 -1 2];

L2 = [3 0 0 -1 0 -1 0 -1 0 0;
 0 3 0 0 -1 0 -1 0 -1 0;
 0 0 3 0 0 -1 0 -1 0 -1;
 -1 0 0 3 0 0 -1 0 -1 0;
 0 -1 0 0 3 0 0 -1 0 -1;
 -1 0 -1 0 0 3 0 0 -1 0;
 0 -1 0 -1 0 0 3 0 0 -1;
 -1 0 -1 0 -1 0 0 3 0 0;
 0 -1 0 -1 0 -1 0 0 3 0;
 0 0 -1 0 -1 0 -1 0 0 3];

X = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10]';

Consensus_L1 = L1 * X;
Consensus_L2 = L2 * X;

cL11 = Consensus_L1(1,:)';
cL12 = Consensus_L1(2,:)';
cL13 = Consensus_L1(3,:)';
cL14 = Consensus_L1(4,:)';
cL15 = Consensus_L1(5,:)';
cL16 = Consensus_L1(6,:)';
cL17 = Consensus_L1(7,:)';
cL18 = Consensus_L1(8,:)';
cL19 = Consensus_L1(9,:)';
cL110 = Consensus_L1(10,:)';

cL21 = Consensus_L2(1,:)';
cL22 = Consensus_L2(2,:)';
cL23 = Consensus_L2(3,:)';
cL24 = Consensus_L2(4,:)';
cL25 = Consensus_L2(5,:)';
cL26 = Consensus_L2(6,:)';
cL27 = Consensus_L2(7,:)';
cL28 = Consensus_L2(8,:)';
cL29 = Consensus_L2(9,:)';
cL210 = Consensus_L2(10,:)';

c1 = [cL11(1:10000);cL21(10001:60000);cL11(60001:100001)];
c2 = [cL12(1:10000);cL22(10001:60000);cL12(60001:100001)];
c3 = [cL13(1:10000);cL23(10001:60000);cL13(60001:100001)];
c4 = [cL14(1:10000);cL24(10001:60000);cL14(60001:100001)];
c5 = [cL15(1:10000);cL25(10001:60000);cL15(60001:100001)];
c6 = [cL16(1:10000);cL26(10001:60000);cL16(60001:100001)];
c7 = [cL17(1:10000);cL27(10001:60000);cL17(60001:100001)];
c8 = [cL18(1:10000);cL28(10001:60000);cL18(60001:100001)];
c9 = [cL19(1:10000);cL29(10001:60000);cL19(60001:100001)];
c10 = [cL110(1:10000);cL210(10001:60000);cL110(60001:100001)];




%%%%%%%%%%%%%% Plot each consensus error of 10 agents %%%%%%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,6.3]);
plot(t,c1,':','LineWidth',2.5);
hold on
plot(t,c2,'-','LineWidth',2.5);
plot(t,c3,'-.','LineWidth',2.5);
plot(t,c4,'--','LineWidth',2.5);
plot(t,c5,':','LineWidth',2.5);
plot(t,c6,'-','LineWidth',2.5);
plot(t,c7,'-.','LineWidth',2.5);
plot(t,c8,'--','LineWidth',2.5);
plot(t,c9,':','LineWidth',2.5);
plot(t,c10,'-.','LineWidth',2.5);
ylabel('Consensus error','Interpreter','latex','FontSize',17.6);
xlabel("$t$ (s)",'Interpreter','latex','FontSize',17.6);
grid on
axes('position',[0.436857319045646,0.241865611577985,0.313593131404805,0.304187673214336]);
plot(t(40000:80000),c1(40000:80000),':','LineWidth',1.5);
hold on
plot(t(40000:80000),c2(40000:80000),'-','LineWidth',1.5);
plot(t(40000:80000),c3(40000:80000),'-.','LineWidth',1.5);
plot(t(40000:80000),c4(40000:80000),'--','LineWidth',1.5);
plot(t(40000:80000),c5(40000:80000),':','LineWidth',1.5);
plot(t(40000:80000),c6(40000:80000),'-','LineWidth',1.5);
plot(t(40000:80000),c7(40000:80000),'-.','LineWidth',1.5);
plot(t(40000:80000),c8(40000:80000),'--','LineWidth',1.5);
plot(t(40000:80000),c9(40000:80000),':','LineWidth',1.5);
plot(t(40000:80000),c10(40000:80000),'-.','LineWidth',1.5);
xlim([4,8]);
ylim([-0.5,0.5]);
legend1 = legend({'disturbance'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.596579173514734,0.67007936871241,0.308109018124584,0.256904758271717]);
set(legend1,'Box','off');
grid on




%% Run the ``undirect_graph_disturbance_second_order_switch.slx''(No disturbance) and run the next code
sum1 =0.1*(abs(c1)+abs(c2)+abs(c3)+abs(c4)+abs(c5)+abs(c6)+abs(c7)+abs(c8)+abs(c9)+abs(c10));

%% Run the ``undirect_graph_disturbance_second_order_switch.slx''(disturbance) and run the next code
sum1d =0.1*(abs(c1)+abs(c2)+abs(c3)+abs(c4)+abs(c5)+abs(c6)+abs(c7)+abs(c8)+abs(c9)+abs(c10));

%% Run the ``undirect_graph_disturbance_TBG.slx''(No disturbance) and run the next code
sum2 =0.1*(abs(c1)+abs(c2)+abs(c3)+abs(c4)+abs(c5)+abs(c6)+abs(c7)+abs(c8)+abs(c9)+abs(c10));

%% Run the ``undirect_graph_disturbance_TBG.slx''(disturbance) and run the next code
sum2d =0.1*(abs(c1)+abs(c2)+abs(c3)+abs(c4)+abs(c5)+abs(c6)+abs(c7)+abs(c8)+abs(c9)+abs(c10));


%%%%%%%%%%%%%% Plot total consensus errors %%%%%%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
semilogy(t,sum1,'-','LineWidth',2.5,'Color',[0.00,0.45,0.74]);
hold on
semilogy(t,sum1d,':','LineWidth',2.5,'Color',[0.00,0.45,0.74]);
semilogy(t,sum2,'-','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
semilogy(t,sum2d,':','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
ylabel('Consensus error','Interpreter','latex','FontSize',17.6);
xlabel("$t$ (s)",'Interpreter','latex','FontSize',17.6);
legend1 = legend({'Proposed (no)','Proposed (yes)','Ref.[21] (no)','Ref.[21] (yes)'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.129518585254053,0.124841273474315,0.338690941106692,0.256904758271718]);
%set(legend1,'Box','off');
grid on




