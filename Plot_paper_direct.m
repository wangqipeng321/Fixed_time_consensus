%% 
% Run the ``direct_graph_2D_detailed_balanced.slx'' 
% or ``direct_graph_2D_spanning_tree.slx'' and run the next code
%% 
x1=out.x1.Data;
x2=out.x2.Data;
x3=out.x3.Data;
x4=out.x4.Data;

y1=out.y1.Data;
y2=out.y2.Data;
y3=out.y3.Data;
y4=out.y4.Data;

t=out.x1.time;
sum1x = abs(x1-x2) + abs(x1-x3) + abs(x1-x4);
sum1y = abs(y1-y2) + abs(y1-y3) + abs(y1-y4);

u11=out.u11.Data;
u12=out.u12.Data;
u13=out.u13.Data;
u14=out.u14.Data;

u21=out.u21.Data;
u22=out.u22.Data;
u23=out.u23.Data;
u24=out.u24.Data;

%% 
% Run the ``direct_graph_2D_TBG_detailed_balanced.slx'' 
% or ``direct_graph_2D_TBG_spanning_tree.slx'' and run the next code
%% 
x11=out.x1.Data;
x12=out.x2.Data;
x13=out.x3.Data;
x14=out.x4.Data;

y11=out.y1.Data;
y12=out.y2.Data;
y13=out.y3.Data;
y14=out.y4.Data;

sum2x = abs(x11-x12) + abs(x11-x13) + abs(x11-x14);
sum2y = abs(y11-y12) + abs(y11-y13) + abs(y11-y14);


u111=out.u11.Data;
u112=out.u12.Data;
u113=out.u13.Data;
u114=out.u14.Data;

u121=out.u21.Data;
u122=out.u22.Data;
u123=out.u23.Data;
u124=out.u24.Data;


%%%%%%%%%%%%%%% Plot trajectory %%%%%%%%%%%%%%
%% proposed method
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
plot3(t,x1,y1,':','LineWidth',2);
hold on
plot3(t,x2,y2,'-','LineWidth',2);
plot3(t,x3,y3,'-.','LineWidth',2);
plot3(t,x4,y4,'--','LineWidth',2);
ylabel("$x$",'Interpreter','latex','FontSize',17.6);
xlabel("$t$",'Interpreter','latex','FontSize',17.6);
zlabel("$y$",'Interpreter','latex','FontSize',17.6);
view([-37.5,30]);
legend1 = legend({'Leader','Follower1','Follower2','Follower3'},"FontName","Times New Roman",'FontSize',16);
set(legend1,'Orientation','vertical','position',[0.656342266143075,0.266666673762459,0.248214281031063,0.251190469094685]);
grid on

%% TBG method
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
plot3(t,x11,y11,':','LineWidth',2);
hold on
plot3(t,x12,y12,'-','LineWidth',2);
plot3(t,x13,y13,'-.','LineWidth',2);
plot3(t,x14,y14,'--','LineWidth',2);
ylabel("$x$",'Interpreter','latex','FontSize',17.6);
xlabel("$t$",'Interpreter','latex','FontSize',17.6);
zlabel("$y$",'Interpreter','latex','FontSize',17.6);
view([-37.5,30]);
legend1 = legend({'Leader','Follower1','Follower2','Follower3'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.656342266143075,0.266666673762459,0.248214281031063,0.251190469094685]);
grid on



%%%%%%%%%%%%%%%%% Plot totol tracking error    %%%%%%%%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
semilogy(t,sum1x,'-','LineWidth',2.5,'Color',[0.00,0.45,0.74]);
hold on
semilogy(t,sum1y,'--','LineWidth',2.5,'Color',[0.00,0.45,0.74]);
semilogy(t,sum2x,'-','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
semilogy(t,sum2y,'--','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
ylabel("Totol tracking error",'Interpreter','latex','FontSize',17.6);
xlabel("$t$ (s)",'Interpreter','latex','FontSize',17.6);
xlim([0 5]);
legend1 = legend({'$x$ of our','$y$ of our','$x$ in [21]','$y$ in [21]'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.675340515332088,0.67007936871241,0.229246244399787,0.256904758271717]);
grid on


%%%%%%%%%%%%%%%%% Plot control input (spanning tree)    %%%%%%%%%%%%%%%%
%%
figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
subplot(2,2,1)
plot(t,u12,'-','LineWidth',2);
hold on
plot(t,u13,'-.','LineWidth',2);
plot(t,u14,'--','LineWidth',2);
xlim([0 5]);
ylim([-10 10]);
title('$u_{ix}$ in our protocol (19)','Interpreter','latex','FontSize',12);
grid on

subplot(2,2,2)
plot(t,u22,'-','LineWidth',2);
hold on
plot(t,u23,'-.','LineWidth',2);
plot(t,u24,'--','LineWidth',2);
xlim([0 5]);
ylim([-20 20]);
title('$u_{iy}$ in our protocol (19)','Interpreter','latex','FontSize',12);
grid on

subplot(2,2,3)
plot(t,u112,'-','LineWidth',2);
hold on
plot(t,u113,'-.','LineWidth',2);
plot(t,u114,'--','LineWidth',2);
xlim([0 5]);
ylim([-10 10]);
title('$u_{ix}$ in protocol (25)','Interpreter','latex','FontSize',12);
grid on

subplot(2,2,4)
plot(t,u122,'-','LineWidth',2);
hold on
plot(t,u123,'-.','LineWidth',2);
plot(t,u124,'--','LineWidth',2);
xlim([0 5]);
ylim([-20 20]);
title('$u_{iy}$ in protocol (25)','Interpreter','latex','FontSize',12);
legend1 = legend({'Follower1','Follower2','Follower3'},"FontName","Times New Roman",'FontSize',11);
set(legend1,'Orientation','horizontal','position',[0.172527009857362,0.00881515737628,0.678571419204985,0.049999998793715]);
grid on










