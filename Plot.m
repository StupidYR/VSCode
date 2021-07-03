clear
clc
dbstop if error
%% ����ͼ
% x = 2001:2006;
% y = [11,22,33,44,55,66];
% bar(x,y)
%% ������ĺ�����߶�
% x = -3:0.01:3;
% y = sin(x);
% plot(x,y);
% set(gca,'XLim',[-6,6]);             % ����XY��ķ�Χ
% set(gca,'YLim',[-2,2]);
% set(gca,'FontSize',15);
%% LaTex����ͼ��ע
% x = linspace(0,3,100);
% y = x.^2.*sin(x);
% plot(x,y,'k','LineWidth',2)
% line([2,2],[0,2^2*sin(2)]);
% str = '$$\int_0^2 {{x^2}\sin \left( x \right)} dx$$';
% text(0.25,2.5,str,'Interpreter','latex');
% annotation('arrow','X',[0.32,0.5],'Y',[0.6,0.4]);     % ��ͷ��XYȡֵΪռ�����Ի���ı���
%% ͼ����ʽ����
% x = linspace(1,2,100);
% f = x.^2;
% g = sin(2.*pi.*x);
% plot(x,f,'k');
% hold on
% plot(x,g,'or')
% axis([1,2,-1,4]);                   % ������̶�
% legend('x^2','sin(2*pi*x)');        % ���ͼ��     
%% ������ȿ�
% x = -3:0.1:3;
% y = x.^2;
% plot(x,y,'green-o')
% axis equal
%% �������ͼ
% theta = 0:pi/50:6*pi;
% x = cos(theta);
% y = sin(theta);
% plot(x,y)
% z = 0:300;
% plot3(x,y,z)
%% music.m ������˥��
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
% title('˥��');
% xlabel('x-axis')
% ylabel('y-axis')
%% ���ϣ�������ͼ
% subplot(2,2,1)
% plot(x,y)
% subplot(2,2,2)
% plot(x,z)
% subplot(2,2,[3,4])
% plot(x,k)
%% �����ͼ
% x = -3:0.1:3;
% y = -3:0.1:3;
% z = x.^2 + y.^2;
% [X,Y] = meshgrid(x,y);
% % plot(X,Y)
% Z = X.^2 + Y.^2;
% surf(X,Y,Z)
%% ����
% [x,y,z] = sphere(20);
% 
% % ʹ��surf����
% figure;
% axis equal;
% surf(x,y,z);
%% ����
% x=-4:0.5:4;
% y=-4:0.5:4;
% 
% [X,Y]=meshgrid(x,y);
% 
% z=-X.^2+Y.^2;
% meshz(x,y,z)
% h=gca;
% 
% %��̬ͼ
% view(h,30,50)  

%��̬��תͼ
% axis vis3d
% v = 0.5;  %����v���Կ�����ת�ٶ�
% try
%     for i=0:v:1000  
%         view(h,i,30)  %view�������ùۿ��ӽ�
%         drawnow
%     end 
% end
%% ����ϵͳ�Զ����κ�ϰ���ͼ
aplha = -pi/2:pi/40:pi/2;
x = 0:0.01:1;
a = 0.75*cos(aplha);
b = 0.75*sin(aplha) + 0.25;
plot(a,b,'-');      %����Բ��
hold on

x1 = linspace(0,1,5);
y1 = linspace(0.6,0.6,5); 
y2 = linspace(-0.24,-0.24,5); 
plot(x1,y1)
hold on
plot(x1,y2)     %����ƽ�����������ֱ��

hold on
y3 = (4/3)*x;
plot(x,y3)
hold on
y4 = -(4/3)*x;
plot(x,y4)
hold on

grid on
axis equal