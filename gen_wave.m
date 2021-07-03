function y = gen_wave( tone, ryth )                 % tone:����, ryth������
fs = 8192;                                          % ��׼������
freqs = [ 523, 587, 659, 698, 783, 880, 988,... 
          1109, 1245, 1397, 1480, 1661, 1865, 2093];        % ʮ��ƽ���ɣ���ͬ��Ƶ�ʶ�Ӧ��ͬ������
x = linspace(0,2*pi*ryth,floor(fs*ryth));                   % floorȡ�����������ʱ������ΪС��
y = sin(freqs(tone) * x) .*(1 - x/(2*pi*ryth));             % .* (1-x/(2*pi*ryth)) ---> �������½�
end
