clear
clc
dbstop if error
%%
% x = linspace(-pi,pi,100);
% y = sin(x);
% h = plot(x,y);
% for i = 1:100
%     x = x + 0.1;
%     y = sin(x);
%     set(h,'XData',x,'YData',y)      
%     drawnow; 
% end

%%
% theta = linspace(-10*pi,10*pi,1000);
% x = sin(theta);
% y = cos(theta);
% z = theta;
% h = plot3(x,y,z);
% axis([-1,1,-1,1,-10*pi,10*pi]);       

% for i = 1:5
%     for i = 1:200
%         z = 0.98*z;
%         set(h,'XData',x,'YData',y,'ZData',z)
%         drawnow;
%     end
%     for i = 1:200
%         z = 0.98\z;
%         set(h,'XData',x,'YData',y,'ZData',z)
%         drawnow;
%     end
% end

%%
t = linspace(-4,4,100);
x = cos(t);
y = sin(t);
plot(x,y,'k','LineWidth',2)                   % �������̻��Ƴ�ʱ�����
axis equal;                                   % ʹʱ�������ֳ����Ǹ���Բ
hold on 
miaoX = [0,0];
miaoY = [0,1];
fenX = [0,0];
fenY = [0,0.7];
shiX = [0,0];
shiY = [0,0.4];                               % �ֱ�������ʱ��ָ�볤��Ϊ 1��0.7��0.4
text(0,1,'0');
text(1,0,'3');
text(0,-1,'6');
text(-1,0,'9');                               % �ĸ�ʱ��̶�
miaoH = plot(miaoX,miaoY,'r','LineWidth',1);
fenH = plot(fenX,fenY,'g','LineWidth',3);
shiH = plot(shiX,shiY,'b','LineWidth',5);     % �������̻���ʱ����ָ�룬���ƴ�ϸ

miaoT = pi/2;
fenT = pi/2;
shiT = pi/2;                                  % ȷ����ʼλ��

for b = 1:60
    for a = 1:60
        miaoT = miaoT - 2*pi/60;
        miaoX(2) = cos(miaoT);      
        miaoY(2) = sin(miaoT);                      
        set(miaoH,'XData',miaoX,'YData',miaoY)      % ʹ���뿪ʼ�ƶ�
        pause on
        pause(1)
        pause off                                   % һ���Ӷ�һ���̶�
        drawnow;                                    
    end
    fenT = fenT - 2*pi/60;
    fenX(2) = 0.7*cos(fenT);
    fenY(2) = 0.7*sin(fenT);
    set(fenH,'XData',fenX,'YData',fenY)
    drawnow;                                        % ������תһȦʹ�����ƶ�һ���̶�

    shiT = shiT - pi/(6*60);
    shiX(2) = 0.4* cos(shiT);
    shiY(2) = 0.4*sin(shiT);
    set(shiH,'XData',shiX,'YData',shiY)
    drawnow;                                        % ������תһȦʹʱ���ƶ�һ���̶�
end