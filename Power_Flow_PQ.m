clear
clc
%% 初始条件
% 线路阻抗
z12 = 10 + 16*1i;
z13 = 13.5 + 21*1i;
z23 = 24 + 22*1i;
% 基准值
BP = 12000;
BU = 110;
% 节点功率 及 标幺
Pis = [20,25];    Qis = [15,18];
Pis = Pis/BP;    Qis = Qis/BP;
% 设定节点电压初值 及 标幺
U = [115,110,110];
U = U/BU;
angle = [0,0,0];
%% 导纳矩阵
Y = zeros(3,3);
% 自导纳
Y(1,1) = 1/(z12) + 1/(z13);
Y(2,2) = 1/(z12) + 1/(z23);
Y(3,3) = 1/(z13) + 1/(z23);
% 互导纳
Y(1,2) = -1/(z12);  Y(2,1) = Y(1,2);
Y(1,3) = -1/(z13);  Y(3,1) = Y(1,3);
Y(2,3) = -1/(z23);  Y(3,2) = Y(2,3);
G = real(Y)*(BU*BU/BP);
B = imag(Y)*(BU*BU/BP);
B1 = B(2:3,2:3);     
B2 = B(2:3,2:3);
%% 迭代循环
DPi = ones(1,2);    DQi = ones(1,2);    time = 0;
while (max(abs(DPi)) > 0.0001) && (max(abs(DQi)) > 0.0001)
    time = time + 1;
    %% 计算 Delter_P 和 Delter_Q 矩阵
    add1 = 0;       add2 = 0;
    for i = 2:3
        for j = 1:3
            add1 = add1 + U(j)*(G(i,j)*cos(angle(i)-angle(j)) + B(i,j)*sin(angle(i)-angle(j)));
            add2 = add2 + U(j)*(G(i,j)*sin(angle(i)-angle(j)) - B(i,j)*cos(angle(i)-angle(j)));
        end
        Pi = U(i)*add1;
        Qi = U(i)*add2;
        DPi(i-1) = Pis(i-1) - Pi;
        DQi(i-1) = Qis(i-1) - Qi;
        add1 = 0;       add2 = 0;
    end
    %% 计算 ax = b
    UU = [U(2),U(3)];
    x = -B1\(DPi./UU)';
    y = -B2\(DQi./UU)';
    
    %% 修正后的 相角和幅值
    angle(2) = angle(2) + x(1,1)/U(2);
    angle(3) = angle(3) + x(2,1)/U(3);
    U(2) = U(2) + y(1,1);
    U(3) = U(3) + y(2,1);
    fprintf("第 %g 次迭代后U和angle分别如下\n",time);
    disp(110*U)
    disp(angle)
    fprintf("--------------\n");
end