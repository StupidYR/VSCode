clear
clc
dbstop if error
%% 关于 输入与输出
% x = input('please enter x: ');
% y = input('please enter y: ');
% z = input('please enter z: ');
% fprintf('Matlab tells you that %g + %g = %g \n',x,y,x+y);
% 关于 if 
% if x > y
%     fprintf('min is %g \n',y);
%     min = y;
% elseif x < y
%     fprintf('min is %g \n',x);
%     min = x;
% else
%     disp('x = y');
% end
% %% 关于 while 
% while min ~= 0
%     if (mod(x,min)||mod(y,min)) == 0
%         disp(min);
%         break;
%     else
%         min = min -1;
%     end
% end
%% 关于 for 
% for i = 1:2:20
%     j = 440*2^(i/12);
%     disp(['i=', num2str(i), ' j=', num2str(j)]);
% end
%% 关于 structure 
% student.name = 'StupidYR';
% student.number = '1804190131';
% student.score = [100,97,89;0,0,95];
% student.subject.degree = 'A';
% student.subject.Chiness = [1,2,3,4,5];
% student.subject.Math = [11,21,31,41,51];
% student.subject.English = [111,211,311,411,511];

% student(2).name = 'StupidWZ';
% student(2).number = '1804190130';
% student(2).score = [100,99,89;100,92,95];
%% 元胞数组
% struct.time = 20180120;
% struct.address = "WuHan";
% cell = {[1,2,3;4,5,6],"StupidYR";666.666,struct};

% two  = 2;
% one(1,1) = {'StupidYR'}; 
% one(1,2) = {'1804190131'};  
% one(2,1) = {[100,97,89;0,0,95]}; 
% one(2,2) = {2}; 

% two(1,1) = {'StupidWZ'}; 
% two(1,2) = {'1804190130'}; 
% two(2,1) = {[100,99,89;100,92,95]}; 
% two(2,2) = {'None'}; 
%% 回文
% name = 'StupidYR''WZ';
% disp(name)
% for i = length(name):-1:1
%     eman(i) = name(length(name)+1-i);
% end
% disp(eman)
%% 在[-2,2]寻找Fun的零点
% x = linspace(-2,2,100);
% x0 = fzero('Fun',0);
% disp(x0)
% fminbnd('Fun',-2,2)
% plot(x,Fun(x));
%% 绘面图
% t = 0:pi/10:2*pi;
% [X,Y,Z] = cylinder(4*cos(t));
% subplot(2,2,1); mesh(X); title('X');
% subplot(2,2,2); mesh(Y); title('Y');
% subplot(2,2,3); mesh(Z); title('Z');
% subplot(2,2,4); mesh(X,Y,Z); title('X,Y,Z');
%% 测试高斯消元法
%test1
% A = [2,4,-6;1,5,3;1,3,2];
% b = [-4;10;5];
% x = gauss1(A,b);
% x = gauss2(A,b);
%test2
% A =[2,3,4;3,5,2;4,3,30];
% b = [6,5,32]';
% x = gauss1(A,b);
% x = gauss2(A,b);
%% 求积分
% syms t
% y = 3*(t^11)*exp(-t^3);
% a = int(y,0,inf);
%% 矩阵乘法
% A = pascal(3); B = magic(3);
% m = 3; n = 3;
% for i = 1:m
%     for j = 1:n
%         C(i,j) = A(i,:)*B(:,j);
%     end
% end
%% NR
% 当 i ≠ j 时
%     i = 2;
%     J{i-1,i}(1,1) = -G(i,i+1)*e(i) - B(i,i+1)*f(i);
%     J{i-1,i}(2,2) = -J{i-1,i}(1,1);
%     J{i-1,i}(1,2) = B(i,i+1)*e(i) - G(i,i+1)*f(i);
%     J{i-1,i}(2,1) = J{i-1,i}(1,2);

%    J{2,1} = J{1,2};
% 当 i = j 时
% for i = 2:3
%     J{i-1,i-1}(1,1) = -sum1 - G(i,i)*e(i) - B(i,i)*f(i);
%     J{i-1,i-1}(1,2) = -sum2 + B(i,i)*e(i) - G(i,i)*f(i);
%     J{i-1,i-1}(2,1) = sum2 + B(i,i)*e(i) - G(i,i)*f(i);
%     J{i-1,i-1}(2,2) = -sum1 + G(i,i)*e(i) + B(i,i)*f(i);
% end
%% PQ
%     a = 20 - 110*(-0.0281*115+0.0507*110-0.0226*110) b = 15 +
% 110*(0.0449*115-0.0657*110+0.0208*110) c = 25 -
% 110*(-0.0217*115-0.0226*110+0.0443*110) d = 18 +
% 110*(0.0337*115+0.0208*110-0.0544*110)
% 
% Y = [0.0498 - 0.0786i,-0.0281 + 0.0449i,-0.0217 + 0.0337i;
%     -0.0281 + 0.0449i,0.0507 - 0.0657i,-0.0226 + 0.0208i; -0.0217 +
%     0.03367i,-0.0226 + 0.0208i,0.0443 - 0.0544i];
%         add1 = G(i,:).*e - B(i,:).*f; sum1 = sum((sum(add1))'); add2 =
%         G(i,:).*f + B(i,:).*e; sum2 = sum((sum(add2))');
%% 导纳矩阵
% G=[0.0498   -0.0281 -0.0217;
%    -0.0281  0.0507  -0.0226;
%    -0.0217  -0.0226 0.0443];
% B=[-0.0786  0.0449  0.0337;
%    0.0449   -0.0657 0.0208;
%    0.0337   0.0208  -0.0544];
% B1=[ -0.0657 0.0208;
%      0.0208  -0.0544];
% B2=[ -0.0657 0.0208;
%      0.0208  -0.0544];
%% 设定初始值 ，节点1：平衡节点；节点2、3：PQ节点
% U=[115 110 110];%初始化电压幅值
% FI=[0 0 0];%初始化相角
% PS=[0 20 25];
% QS=[0 15 18];
% %初始化deltaP和deltaQ
% dP=zeros(1,3);
% k=1e-4;%精度
% dQ=zeros(1,3);
% PU=zeros(1,2);
% QU=zeros(1,2);
% a=0;
% b=0;
% n=3;%节点数
% num=0;%初始化迭代次数
%  while(1)
     
%  num=num+1;
%  %计算有功和无功，由于只有两个PQ节点，所以矩阵大小一致
%         for i=2:3
%             for j=1:n
%                 a=a+U(:,j)*(G(i,j)*cos(FI(:,i)-FI(:,j))+B(i,j)*sin(FI(:,i)-FI(:,j)));
%                 b=b+U(:,j)*(G(i,j)*sin(FI(:,i)-FI(:,j))-B(i,j)*cos(FI(:,i)-FI(:,j)));
%             end
%                 dP(:,i)=PS(:,i)-U(:,i)*a;
%                 dQ(:,i)=QS(:,i)-U(:,i)*b;
%                 PU(:,i-1)=dP(:,i)/U(:,i);
%                 QU(:,i-1)=dQ(:,i)/U(:,i);
%                 a=0;
%                 b=0;   
%         end
% UFI=-inv(B1)*PU';
% DU=-inv(B2)*QU';
% DFI=zeros(1,2);
%         for i=1:2
%            DFI(:,i)=UFI(i,:)/U(:,i+1);
%         end
% DFI=[0 DFI];
% DU=[0 DU'];
% FI=FI+DFI;
% U=U+DU;
%         if(abs(max([dP dQ]))<k)
%         break
%         end
%  end
% disp(['迭代次数：',num2str(num)]);
% disp(['U1：',num2str(U(:,1)),'   phi1:',num2str(FI(:,1))]);
% disp(['U2：',num2str(U(:,2)),'   phi2:',num2str(FI(:,2))]);
% disp(['U3：',num2str(U(:,3)),'   phi3:',num2str(FI(:,3))]);
%% 伪逆运算
% a = [1,0;-1/2,sqrt(3)/2;-1/2,-sqrt(3)/2];
% b = pinv(a);
%% 电力系统分析计算题 14-10，经济运行
% y = 0.35;   % 初始值设定
% sum = 0;
% cell_PLD = [350,700,500];
% time = [8,10,6];
% while(abs(sum - 2e+7) > 1000)   % 判断是否满足最小误差要求
%     if sum > 2e+7
%         y = y + 0.0001;
%         sum = 0;
%     else
%         y = y - 0.0001;
%         sum = 0; 
%     end
%     for i = 1:3
%         PLD = cell_PLD(i);
%         T = time(i);
%         PH = (0.4 - 1.5*y + 0.001*PLD)/(0.003*y + 0.001);
%         PT = (-0.4 + 1.5*y + 0.003*y*PLD)/(0.003*y + 0.001);
%         sum = sum + (2 + 1.5*PH + 0.0015*PH*PH)*T*3600;
%     end
% end
% disp(sum)
% disp(y)
%% 二次型求逆
a = [1 1 1;0 1 1;0 0 1];
b = inv(a);
c = [2 1 -1;-2 3 -1;3 -2 0.25];
d = det(c);
P = [1 2 -2;2 -2 -1;2 1 2];
r = [1 0 0;0 2 0;0 0 3];
A = P*r*(P^-1);
%% 线性代数
format rat
a = [1 1 1;1 2 1;1 1 3];
b = a^-1;
c = b*[1;1;1] + b*[1;2;1] + b*[1;1;3];
%%