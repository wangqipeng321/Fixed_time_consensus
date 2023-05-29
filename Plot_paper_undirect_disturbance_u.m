%%%%%%%%%load out_nodisturbance_my.mat %%%%%%%%
%% Run the ``undirect_graph_disturbance_second_order_switch.slx''(No disturbance) and run the next code
t=out.x1d.time;
u1d=out.u1d.Data;
u2d=out.u2d.Data;
u3d=out.u3d.Data;
u4d=out.u4d.Data;
u5d=out.u5d.Data;
u6d=out.u6d.Data;
u7d=out.u7d.Data;
u8d=out.u8d.Data;
u9d=out.u9d.Data;
u10d=out.u10d.Data;

%% Run the ``undirect_graph_disturbance_second_order_switch.slx''(disturbance) and run the next code
u1d1=out.u1d.Data;
u2d1=out.u2d.Data;
u3d1=out.u3d.Data;
u4d1=out.u4d.Data;
u5d1=out.u5d.Data;
u6d1=out.u6d.Data;
u7d1=out.u7d.Data;
u8d1=out.u8d.Data;
u9d1=out.u9d.Data;
u10d1=out.u10d.Data;

%% Run the ``undirect_graph_disturbance_TBG.slx''(No disturbance) and run the next code
u1d2=out.u1d.Data;
u2d2=out.u2d.Data;
u3d2=out.u3d.Data;
u4d2=out.u4d.Data;
u5d2=out.u5d.Data;
u6d2=out.u6d.Data;
u7d2=out.u7d.Data;
u8d2=out.u8d.Data;
u9d2=out.u9d.Data;
u10d2=out.u10d.Data;

%% Run the ``undirect_graph_disturbance_TBG.slx''(disturbance) and run the next code
u1d3=out.u1d.Data;
u2d3=out.u2d.Data;
u3d3=out.u3d.Data;
u4d3=out.u4d.Data;
u5d3=out.u5d.Data;
u6d3=out.u6d.Data;
u7d3=out.u7d.Data;
u8d3=out.u8d.Data;
u9d3=out.u9d.Data;
u10d3=out.u10d.Data;



%%%%%%%%% Plot desired virtual input %%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
subplot(2,2,1)
plot(t,u1d,'-','LineWidth',1.5);
hold on
plot(t,u2d,'-','LineWidth',1.5);
plot(t,u3d,'-','LineWidth',1.5);
plot(t,u4d,'-','LineWidth',1.5);
plot(t,u5d,'-','LineWidth',1.5);
plot(t,u6d,'-','LineWidth',1.5);
plot(t,u7d,'-','LineWidth',1.5);
plot(t,u8d,'-','LineWidth',1.5);
plot(t,u9d,'-','LineWidth',1.5);
plot(t,u10d,'-','LineWidth',1.5);
xlim([0 10]);
ylim([-15 15]);
title('Proposed $u_{id}$ (no)','Interpreter','latex','FontSize',12);
grid on

subplot(2,2,2)
plot(t,u1d1,'-','LineWidth',1.5);
hold on
plot(t,u2d1,'-','LineWidth',1.5);
plot(t,u3d1,'-','LineWidth',1.5);
plot(t,u4d1,'-','LineWidth',1.5);
plot(t,u5d1,'-','LineWidth',1.5);
plot(t,u6d1,'-','LineWidth',1.5);
plot(t,u7d1,'-','LineWidth',1.5);
plot(t,u8d1,'-','LineWidth',1.5);
plot(t,u9d1,'-','LineWidth',1.5);
plot(t,u10d1,'-','LineWidth',1.5);
xlim([0 10]);
ylim([-15 15]);
title('Proposed $u_{id}$ (yes)','Interpreter','latex','FontSize',12);
grid on

subplot(2,2,3)
plot(t,u1d2,'-','LineWidth',1.5);
hold on
plot(t,u2d2,'-','LineWidth',1.5);
plot(t,u3d2,'-','LineWidth',1.5);
plot(t,u4d2,'-','LineWidth',1.5);
plot(t,u5d2,'-','LineWidth',1.5);
plot(t,u6d2,'-','LineWidth',1.5);
plot(t,u7d2,'-','LineWidth',1.5);
plot(t,u8d2,'-','LineWidth',1.5);
plot(t,u9d2,'-','LineWidth',1.5);
plot(t,u10d2,'-','LineWidth',1.5);
xlim([0 10]);
ylim([-30 30]);
title('Ref.[21] $u_{id}$ (no)','Interpreter','latex','FontSize',12);
grid on

subplot(2,2,4)
p1=plot(t,u1d3,'-','LineWidth',1.5);
hold on
p2=plot(t,u2d3,'-','LineWidth',1.5);
p3=plot(t,u3d3,'-','LineWidth',1.5);
p4=plot(t,u4d3,'-','LineWidth',1.5);
p5=plot(t,u5d3,'-','LineWidth',1.5);
p6=plot(t,u6d3,'-','LineWidth',1.5);
p7=plot(t,u7d3,'-','LineWidth',1.5);
p8=plot(t,u8d3,'-','LineWidth',1.5);
p9=plot(t,u9d3,'-','LineWidth',1.5);
p10=plot(t,u10d3,'-','LineWidth',1.5);
xlim([0 10]);
ylim([-30 30]);
title('Ref.[21] $u_{id}$ (yes)','Interpreter','latex','FontSize',12);
grid on
legend1 = legend([p1,p2,p3,p4,p5],{'A1','A2','A3','A4','A5'},"FontName","Times New Roman",'FontSize',9);
set(legend1,'Orientation','horizontal','position',[0.20822520805556,0.496305675220435,0.678571419204985,0.046153845040352]);
legend boxoff;
ah=axes('position',get(gca,'position'),'visible','off');
legend2 = legend(ah,[p6,p7,p8,p9,p10],{'A6','A7','A8','A9','A10'},"FontName","Times New Roman",'FontSize',9);
set(legend2,'Orientation','horizontal','position',[0.20822520805556,0.022317280651901,0.678571419204985,0.046153845040352]);
legend boxoff;



