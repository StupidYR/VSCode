function y = gen_wave( tone, ryth )                 % tone:音符, ryth：节拍
fs = 8192;                                          % 标准采样率
freqs = [ 523, 587, 659, 698, 783, 880, 988,... 
          1109, 1245, 1397, 1480, 1661, 1865, 2093];        % 十二平均律，不同的频率对应不同的音符
x = linspace(0,2*pi*ryth,floor(fs*ryth));                   % floor取整，避免半拍时采样率为小数
y = sin(freqs(tone) * x) .*(1 - x/(2*pi*ryth));             % .* (1-x/(2*pi*ryth)) ---> 音高逐渐下降
end
