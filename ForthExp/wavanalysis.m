% ��ʱ����Ҷ�任������chirp�źŲ��Σ�ʱ����Ƶ���ϵ
% ¼��a����Ƶ������Ԫ�����������ʾ��ӣ�
[y,fs]=audioread('ding.wav'); 
%ȡ���е�һ������,Ʃ��˵�������� 
yr=y(:,2); 
%��ȡǰ1024���� 
yr=yr(1:1024); 
%��ȡ�����ײ���ʾ��������2048��� 
YR2048=fft(yr,2048); 
figure('numbertitle','off','name','2048��FFT'); 
plot(linspace(-pi,pi,2048),fftshift(abs(YR2048))); 
%��ȡ1024��� 
YR1024=fft(yr,1024); 
figure('numbertitle','off','name','1024��FFT'); 
plot(linspace(-pi,pi,1024),fftshift(abs(YR1024))); 

% %���任�����Ӧ��ԭʼ�ź���ͬ 
% yr1024=real(ifft(YR1024)); 
% figure('numbertitle','off','name',' 1024��fft�ķ��任'); 
% subplot(2,1,1); 
% plot(yr1024) 
% title(' 1024��fft�ķ��任') 
% subplot(2,1,2); 
% plot(yr); 
% title('ԭ�ź�');
% 
% 
% %�ع� 
% %Ѱ�ҷ��ȴ�����ҷ��� 
% [maxpeak,peaki]=max(abs(YR1024(1:512))); 
% MAXSIN=zeros(1,1024); 
% MAXSIN(peaki)=maxpeak; 
% MAXSIN(1026-peaki)=maxpeak; 
% maxsin=ifft(MAXSIN); 
% figure('numbertitle','off','name','�ô����ҷ����ع��ź�'); 
% subplot(2,1,1) 
% plot(maxsin); 
% title('�ع����ź�'); 
% subplot(2,1,2); 
% plot(yr1024); 
% title('ԭʼ�ź�'); 
% %���� 
% wavplay(yr1024); 
% wavplay(maxsin); 
