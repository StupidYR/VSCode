clear
clc
dbstop if error
%% 柱形图
% x = 2001:2006;
% y = [11,22,33,44,55,66];
% bar(x,y)
%% 代码更改横纵轴尺度
% x = -3:0.01:3;
% y = sin(x);
% plot(x,y);
% set(gca,'XLim',[-6,6]);             % 设置XY轴的范围
% set(gca,'YLim',[-2,2]);
% set(gca,'FontSize',15);
%% LaTex做绘图标注
% x = linspace(0,3,100);
% y = x.^2.*sin(x);
% plot(x,y,'k','LineWidth',2)
% line([2,2],[0,2^2*sin(2)]);
% str = '$$\int_0^2 {{x^2}\sin \left( x \right)} dx$$';
% text(0.25,2.5,str,'Interpreter','latex');
% annotation('arrow','X',[0.32,0.5],'Y',[0.6,0.4]);     % 箭头，XY取值为占整个对话框的比例
%% 图形样式更改
% x = linspace(1,2,100);
% f = x.^2;
% g = sin(2.*pi.*x);
% plot(x,f,'k');
% hold on
% plot(x,g,'or')
% axis([1,2,-1,4]);                   % 坐标轴固定
% legend('x^2','sin(2*pi*x)');        % 添加图例     
%% 坐标轴等宽
% x = -3:0.1:3;
% y = x.^2;
% plot(x,y,'green-o')
% axis equal
%% 极坐标绘图
% theta = 0:pi/50:6*pi;
% x = cos(theta);
% y = sin(theta);
% plot(x,y)
% z = 0:300;
% plot3(x,y,z)
%% music.m 的声音衰减
% freq = 4;
% x = linspace(0,2*pi,100);
% y = sin(freq*x);
% z = sin(freq*x) .*(1 - x/(2*pi));
% k = 1 - x/(2*pi);
% 
% plot(x,y)
% hold on
% plot(x,z)
% hold on
% plot(x,k)
% grid on
% 
% title('衰减');
% xlabel('x-axis')
% ylabel('y-axis')
%% 接上；分屏绘图
% subplot(2,2,1)
% plot(x,y)
% subplot(2,2,2)
% plot(x,z)
% subplot(2,2,[3,4])
% plot(x,k)
%% 网格绘图
% x = -3:0.1:3;
% y = -3:0.1:3;
% z = x.^2 + y.^2;
% [X,Y] = meshgrid(x,y);
% % plot(X,Y)
% Z = X.^2 + Y.^2;
% surf(X,Y,Z)
%% 球面
% [x,y,z] = sphere(20);
% 
% % 使用surf绘制
% figure;
% axis equal;
% surf(x,y,z);
%% 马鞍面
% x=-4:0.5:4;
% y=-4:0.5:4;
% 
% [X,Y]=meshgrid(x,y);
% 
% z=-X.^2+Y.^2;
% meshz(x,y,z)
% h=gca;
% 
% %静态图
% view(h,30,50)  

%动态旋转图
% axis vis3d
% v = 0.5;  %步长v可以控制旋转速度
% try
%     for i=0:v:1000  
%         view(h,i,30)  %view可以设置观看视角
%         drawnow
%     end 
% end
%% 电力系统自动化课后习题绘图
aplha = -pi/2:pi/40:pi/2;
x = 0:0.01:1;
a = 0.75*cos(aplha);
b = 0.75*sin(aplha) + 0.25;
plot(a,b,'-');      %绘制圆形
hold on

x1 = linspace(0,1,5);
y1 = linspace(0.6,0.6,5); 
y2 = linspace(-0.24,-0.24,5); 
plot(x1,y1)
hold on
plot(x1,y2)     %绘制平行于坐标轴的直线

hold on
y3 = (4/3)*x;
plot(x,y3)
hold on
y4 = -(4/3)*x;
plot(x,y4)
hold on

grid on
axis equal