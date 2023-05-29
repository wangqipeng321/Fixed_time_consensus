t = 0:0.2:10;
a1 = 1.5;
a2 = 1.2;
b1 = 1;
b2 = 1.5;
rho = 1;
z1 = -rho * t.^a1;
z2 = -rho * t.^a1;
ML1 = [];
ML2 = [];

for i = 1:51
    ML1(i) = mittag_leffler(a1,b1,z1(i));
    ML2(i) = mittag_leffler(a1,b2,z1(i));
end
ML1 = double(ML1);
ML2 = double(ML2);
i = 1;
while ML1(i)>0
    i = i + 1;
end
t1 = i;
i = 1;
while ML2(i)>0
    i = i + 1;
end
t2 = i;

figure
set(gcf,'Units','centimeter','Position',[38,24,14.8,11.1]);
plot(t,ML1,'-','LineWidth',2.5,'Color',[0.00,0.45,0.74]);
hold on
plot(t,ML2,'--','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
% plot(t,sum2x,'-','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
% plot(t,sum2y,'--','LineWidth',2.5,'Color',[0.85,0.33,0.10]);
plot(1.64,0,'ko','LineWidth',2.5,'MarkerSize',7);
plot(t(t2),0,'ko','LineWidth',2.5,'MarkerSize',7);
ylabel("$E_{\alpha,\beta}(- t^\alpha)$",'Interpreter','latex','FontSize',17.6);
xlabel("$t$",'Interpreter','latex','FontSize',17.6);
xlim([0 10]);
legend1 = legend({'$\alpha = 1.5, \beta = 1$','$\alpha = 1.5, \beta = 1.5$'},'Interpreter','latex','FontSize',16);
set(legend1,'Orientation','vertical','position',[0.550961942450354,0.794394598873912,0.355012558836648,0.132619045802525]);
grid on

function f = mittag_leffler(a,b,z)
% v = [v,1];
% a = v(1);
% b = v(2);
syms k;
f = symsum(z^k/gamma(a*k+b),k,0,inf);       %   symsum 符号求和
end
