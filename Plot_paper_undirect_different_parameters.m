%% Run the next code every time if you run a simulink model
x1=out.x1.Data;
x2=out.x2.Data;
x3=out.x3.Data;
x4=out.x4.Data;
t=out.x1.time;

%%%%% beta = 0.2 %%%%%%%
c1 = out.c.Data;
u1=out.u1.Data;
u2=out.u2.Data;
u3=out.u3.Data;
u4=out.u4.Data;
sum1 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);

%%%%% beta = 0.5 %%%%%%%
c2 = out.c.Data;
u11=out.u1.Data;
u12=out.u2.Data;
u13=out.u3.Data;
u14=out.u4.Data;
sum2 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);

%%%%% beta = 1.0 %%%%%%%
c3 = out.c.Data;
u21=out.u1.Data;
u22=out.u2.Data;
u23=out.u3.Data;
u24=out.u4.Data;
sum3 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);

%%%%% beta = 1.5 %%%%%%%
c4 = out.c.Data;
u31=out.u1.Data;
u32=out.u2.Data;
u33=out.u3.Data;
u34=out.u4.Data;
sum4 = abs(x1-x2) + abs(x1-x3) + abs(x1-x4) + abs(x2-x3) + abs(x2-x4) + abs(x3-x4);




%%%%%%%%%%%%%%% Plot different parameters %%%%%%%%%%%%%%
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
legend1 = legend({'$\beta = 0.2 $','$\beta = 0.5 $','$\beta = 1.0 $','$\beta = 1.5 $'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.691852146363833,0.67007936871241,0.214100234588548,0.256904758271717]);
%set(legend1,'Box','off');
grid on


figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
plot(t,c1,':','LineWidth',2.5);
hold on
plot(t,c2,'-','LineWidth',2.5);
plot(t,c3,'-.','LineWidth',2.5);
plot(t,c4,'--','LineWidth',2.5);
ylabel('$\theta$','Interpreter','latex','FontSize',17.6);
xlabel("$t$ (s)",'Interpreter','latex','FontSize',17.6);
legend1 = legend({'$\beta = 0.2 $','$\beta = 0.5 $','$\beta = 1.0 $','$\beta = 1.5 $'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.691852146363833,0.67007936871241,0.214100234588548,0.256904758271717]);
grid on
%%
%%%%%%%%%%%%%%%%%%%%%%%









%%%%%%%%%%%%% u %%%%%%%%%%%%%
% figure
% subplot(2,2,1)
% plot(t,u1,':','LineWidth',2);
% hold on
% plot(t,u2,'-','LineWidth',2);
% plot(t,u3,'-.','LineWidth',2);
% plot(t,u4,'--','LineWidth',2);
% title('$\beta = 0.5 $','Interpreter','latex','FontSize',12);
% grid on
% 
% subplot(2,2,2)
% plot(t,u11,':','LineWidth',2);
% hold on
% plot(t,u12,'-','LineWidth',2);
% plot(t,u13,'-.','LineWidth',2);
% plot(t,u14,'--','LineWidth',2);
% title('$\beta = 0.2 $','Interpreter','latex','FontSize',12);
% grid on
% 
% subplot(2,2,3)
% plot(t,u21,':','LineWidth',2);
% hold on
% plot(t,u22,'-','LineWidth',2);
% plot(t,u23,'-.','LineWidth',2);
% plot(t,u24,'--','LineWidth',2);
% title('$\beta = 1.0 $','Interpreter','latex','FontSize',12);
% grid on
% 
% subplot(2,2,4)
% plot(t,u31,':','LineWidth',2);
% hold on
% plot(t,u32,'-','LineWidth',2);
% plot(t,u33,'-.','LineWidth',2);
% plot(t,u34,'--','LineWidth',2);
% title('$\beta = 1.5 $','Interpreter','latex','FontSize',12);
% grid on
% legend({'Agent1','Agent2','Agent3','Agent4'},"FontName","Times New Roman",'FontSize',11);









