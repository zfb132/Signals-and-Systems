% ʹ��ǰ100��ϳ���ԳƷ���
t=0:0.001:0.1;
% a�Ǹ��ݸ���Ҷ�ֽ����ĳ˷�ϵ��
a=12/pi;
% �溯���ֽ���ֱ������
y=0;
for i=1:100
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));
end
subplot(221);
% ���������ź�ʱ����
plot(t,y);
axis([0,0.1,-4,4]);
xlabel('t/s');
ylabel('�����ź�ʱ����');

% ���������ź�Ƶ����
N=100;
X=fft(y,N);
f=1/0.1*(-N/2:(N/2-1));
subplot(223);
stem(f,abs(fftshift(X))*2/N);
xlabel('Ƶ��/Hz');
ylabel('����');

% ʹ��ǰ100��ϳ����ǲ�
t=0:0.001:0.1;
y=3;
a=24/pi/pi;
for i=1:100
    y=y+a*cos((2*i-1)*100*pi*t)/(2*i-1)^2;
end
subplot(222);
plot(t,y);
axis([0,0.1,0,7]);
xlabel('t/s');
ylabel('���ǲ��ź�ʱ����');

% �������ǲ��ź�Ƶ����
N=100;
X=fft(y,N);
f=1/0.1*(-N/2:(N/2-1));
subplot(224);
stem(f,abs(fftshift(X))*2/N);
xlabel('Ƶ��/Hz');
ylabel('����');


% Fs = 1000;                    % Sampling frequency
% T = 1/Fs;                     % Sampling period
% L = 1000;                     % Length of signal
% t = (0:L-1)*T;                % Time vector
% 
% x2 = 3*cos(2*pi*150*t)+5*cos(2*pi*66*t);         % Second row wave
% subplot(221);
% plot(t(1:100),x2(1:100));
% 
% n = 2^nextpow2(L);
% Y = fft(x2,n);
% P2 = abs(Y/n);
% P1 = P2(1:n/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% subplot(222);
% stem(0:(Fs/n):(Fs/2-Fs/n),P1(1:n/2))

% S = 0.7*sin(2*pi*50*t);
% S=sin(2*pi*50*t)+sin(2*pi*50*3*t)/3+sin(2*pi*50*5*t)/5+sin(2*pi*50*7*t)/7+sin(2*pi*50*9*t)/9;
% S=sawtooth(2*pi*50*t);
% X = S;
% subplot(221);
% plot(1000*t(1:50),X(1:50))
% title('Signal Corrupted with Zero-Mean Random Noise')
% xlabel('t (milliseconds)')
% ylabel('X(t)')

% fs=130;  %����Ƶ��
% T=1/fs;
% N=512;
% t=0:T:2*pi;
% A=2;P=4;
% y=sin(2*pi*50*t);
% subplot(2,1,1);
% plot(t,y);
% title('�����ź�');
% axis([0,0.04,-4,4]);
% Fy=abs(fft(y,N));
% f2=fs*(0:N/2)/N;
% subplot(2,1,2),stem(f2,Fy(1:N/2+1)*2/(N/2+1))
% title('Ƶ��ͼ');
% %set(gcf,'unit','normalized','position',[0 0 1 1]);
% %set(gca,'xtick',0:0.6:8);
% axis([0,50*5,0 3]);

% % fs=100;
% % t=0:(10/fs):(20-10/fs);
% % N=length(t);
% % df=fs/N;
% % f=0:df:(N-1)*fs/N;
% % y=square(2*pi*60*t,50);
% % subplot(4,1,1);
% % plot(t,y);
% % title('���ź�')
% % subplot(4,1,2);
% % stem(t,y);
% % title('������');
% % subplot(4,1,3);
% % stem(f,abs(fftshift(fft(y,N))));
% % 
% % 
% %  
% % %���ǲ�Ƶ��
% % figure(5);
% % 
% % fs=100;
% % t=0:(10/fs):(20-10/fs);
% % N=length(t);
% % df=fs/N;
% % f=0:df:(N-1)*fs/N;
% % tt=0:0.0001:0.1;  
% % y=0;  
% % for i=1:100  
% %     y=y+12/pi*(sin((2*i-1)*200*pi*tt)/(2*i-1));  
% % end  
% % subplot(4,1,1);
% % plot(tt,y);
% % title('���ź�')
% % subplot(4,1,2);
% % stem(tt,y);
% % title('������');
% % subplot(4,1,3);
% % stem(f,abs(fftshift(fft(y,N))));

% t=0:0.0001:0.1;
% y=sin(2*pi*50*t)+sin(2*pi*50*3*t)/3+sin(2*pi*50*5*t)/5+sin(2*pi*50*7*t)/7+sin(2*pi*50*9*t)/9;
% subplot(211);plot(t,y);
% xlabel('time');
% ylabel('��Գ����ڷ����ź�');N=100;
% X=fft(y,N);
% f=1/0.1*(-N/2:(N/2-1));subplot(212);
% stem(f,abs(fftshift(X)));xlabel('Frequency(Hz)');