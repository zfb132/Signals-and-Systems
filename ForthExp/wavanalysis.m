% 短时傅里叶变换：绘制chirp信号波形，时域与频域关系
% 录制a的音频（可以元音辅音，单词句子）
[y,fs]=audioread('ding.wav'); 
%取其中的一个声道,譬如说，右声道 
yr=y(:,2); 
%截取前1024个点 
yr=yr(1:1024); 
%求取幅度谱并显示，首先是2048点的 
YR2048=fft(yr,2048); 
figure('numbertitle','off','name','2048点FFT'); 
plot(linspace(-pi,pi,2048),fftshift(abs(YR2048))); 
%求取1024点的 
YR1024=fft(yr,1024); 
figure('numbertitle','off','name','1024点FFT'); 
plot(linspace(-pi,pi,1024),fftshift(abs(YR1024))); 

% %反变换，结果应与原始信号相同 
% yr1024=real(ifft(YR1024)); 
% figure('numbertitle','off','name',' 1024点fft的反变换'); 
% subplot(2,1,1); 
% plot(yr1024) 
% title(' 1024点fft的反变换') 
% subplot(2,1,2); 
% plot(yr); 
% title('原信号');
% 
% 
% %重构 
% %寻找幅度大的正弦分量 
% [maxpeak,peaki]=max(abs(YR1024(1:512))); 
% MAXSIN=zeros(1,1024); 
% MAXSIN(peaki)=maxpeak; 
% MAXSIN(1026-peaki)=maxpeak; 
% maxsin=ifft(MAXSIN); 
% figure('numbertitle','off','name','用大正弦分量重构信号'); 
% subplot(2,1,1) 
% plot(maxsin); 
% title('重构的信号'); 
% subplot(2,1,2); 
% plot(yr1024); 
% title('原始信号'); 
% %试听 
% wavplay(yr1024); 
% wavplay(maxsin); 
