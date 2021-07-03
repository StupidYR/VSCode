clear
clc
%% ��ʼ����
% ��·�迹
z12 = 10 + 16*1i;
z13 = 13.5 + 21*1i;
z23 = 24 + 22*1i;
% �ڵ㹦��
Pis = [20,25];    
Qis = [15,18];
% �趨�ڵ��ѹ��ֵ
e = [115,110,110];
f = [0,0,0]; 
%% ���ɾ���
Y = zeros(3,3);
% �Ե���
Y(1,1) = 1/(z12) + 1/(z13);
Y(2,2) = 1/(z12) + 1/(z23);
Y(3,3) = 1/(z13) + 1/(z23);
% ������
Y(1,2) = -1/(z12);  Y(2,1) = Y(1,2);
Y(1,3) = -1/(z13);  Y(3,1) = Y(1,3);
Y(2,3) = -1/(z23);  Y(3,2) = Y(2,3);
G = real(Y);
B = imag(Y);
%% ����ѭ��
DPi = ones(1,2);    DQi = ones(1,2);      b = ones(4,1); 
time = 0;
while (max(abs(DPi)) > 0.0001) && (max(abs(DQi)) > 0.0001)
    time = time + 1;
    %% ���� Delter_W ����
    add1 = 0;   add2 = 0;
    for i = 2:3
        %% �����ۼӺ�
        for j = 1:3
            add1 = add1 + G(i,j)*e(j) - B(i,j)*f(j);
            add2 = add2 + G(i,j)*f(j) + B(i,j)*e(j);
        end
        sum1 = add1;    sum2 = add2;
        add1 = 0;       add2 = 0;
        %% ���� Delter_P
        Pi = e(i)*sum1 + f(i)*sum2;
        DPi(i-1) = Pis(i-1) - Pi;
        %% ���� Delter_Q
        Qi = f(i)*sum1 - e(i)*sum2;
        DQi(i-1) = Qis(i-1) - Qi;    
        %% �� Delter_P,Q ����任Ϊ Delter_W
        for j = 1:4
            if mod(j,2) == 1
                b(j) = DPi((j+1)/2);
            else
                b(j) = DQi(j/2);
            end
        end
    end
    %% �����ſɱȾ��� J
    J1 = zeros(2,2);    J2 = zeros(2,2);
    J3 = zeros(2,2);    J4 = zeros(2,2);
    J = {J1,J2;J3,J4};
    for i = 2:3
        for j = 2:3
            %% �� i = j ʱ
            if i==j        
                J{i-1,i-1}(1,1) = -sum1 - G(i,i)*e(i) - B(i,i)*f(i);
                J{i-1,i-1}(1,2) = -sum2 + B(i,i)*e(i) - G(i,i)*f(i);
                J{i-1,i-1}(2,1) = sum2 + B(i,i)*e(i) - G(i,i)*f(i);
                J{i-1,i-1}(2,2) = -sum1 + G(i,i)*e(i) + B(i,i)*f(i);
            end
            %% �� i ~= j ʱ
            if i ~= j      
                J{i-1,j-1}(1,1) = -G(i,j)*e(i) - B(i,j)*f(i);
                J{i-1,j-1}(2,2) = -J{i-1,j-1}(1,1);
                J{i-1,j-1}(1,2) = B(i,j)*e(i) - G(i,j)*f(i);
                J{i-1,j-1}(2,1) = J{i-1,j-1}(1,2);
            end
        end
    end
    J = -cell2mat(J);       % cell תΪ��ͨ���� 
    %% ��� ax=b��
%     x = gauss1(J,b);
%     x = inv(J)*b;
    x = J\b;  
    %% ������� e �� f
    e(2) = e(2) + x(1,1);
    e(3) = e(3) + x(3,1);
    f(2) = f(2) + x(2,1);
    f(3) = f(3) + x(4,1);
    fprintf("�� %g �ε������ſɱȾ���e��f�ֱ�����\n",time);
    disp(J)
    disp(e)
    disp(f)
    fprintf("--------------\n");
end