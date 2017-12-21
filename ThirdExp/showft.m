% 原信号取为f=1Hz，则采样信号fs应大于等于2倍f，
% 第一个低通滤波器要滤除原信号的高阶分量，肯定要让原信号主要频率全通过；
% 第二个滤波器要能保证让原信号通过（即原信号频谱加窗，使通带频率大于原信号最高频率的两倍）
% 对于原信号为方波时，由于方波的分量的为无限个频率，因此最后无法还原
 N=length(time);    Ts=(time(N) - time(1))/N; 
 m=floor(N/2);     Ws=2*pi/Ts;     W=Ws*(0:m)/N; 
 F=fft(z1,N);  FF=F(1:m+1);  F11=abs(FF);   
 F=fft(z2,N);  FF=F(1:m+1);  F12=abs(FF);  
 F=fft(z3,N);  FF=F(1:m+1);  F13=abs(FF);  
 F=fft(z4,N);  FF=F(1:m+1);  F14=abs(FF);  
 subplot(221) 
 plot(W,F11,'b',-W,F11,'b');   
 title('输入信号的幅频特性'); 
 xlabel('频率（Rad/s）');   
 subplot(222) 
 plot(W,F12,'b',-W,F12,'b'); 
 title('滤波后信号的幅频特性'); 
 xlabel('频率（Rad/s）'); 
 subplot(223) 
 plot(W,F13,'b',-W,F13,'b'); 
 title('抽样后信号的幅频特性'); 
 xlabel('频率（Rad/s）'); 
 subplot(224) 
 plot(W,F14,'b',-W,F14,'b'); 
 title('恢复后信号的幅频特性'); 
 xlabel('频率（Rad/s）'); 