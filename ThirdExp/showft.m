% ԭ�ź�ȡΪf=1Hz��������ź�fsӦ���ڵ���2��f��
% ��һ����ͨ�˲���Ҫ�˳�ԭ�źŵĸ߽׷������϶�Ҫ��ԭ�ź���ҪƵ��ȫͨ����
% �ڶ����˲���Ҫ�ܱ�֤��ԭ�ź�ͨ������ԭ�ź�Ƶ�׼Ӵ���ʹͨ��Ƶ�ʴ���ԭ�ź����Ƶ�ʵ�������
% ����ԭ�ź�Ϊ����ʱ�����ڷ����ķ�����Ϊ���޸�Ƶ�ʣ��������޷���ԭ
 N=length(time);    Ts=(time(N) - time(1))/N; 
 m=floor(N/2);     Ws=2*pi/Ts;     W=Ws*(0:m)/N; 
 F=fft(z1,N);  FF=F(1:m+1);  F11=abs(FF);   
 F=fft(z2,N);  FF=F(1:m+1);  F12=abs(FF);  
 F=fft(z3,N);  FF=F(1:m+1);  F13=abs(FF);  
 F=fft(z4,N);  FF=F(1:m+1);  F14=abs(FF);  
 subplot(221) 
 plot(W,F11,'b',-W,F11,'b');   
 title('�����źŵķ�Ƶ����'); 
 xlabel('Ƶ�ʣ�Rad/s��');   
 subplot(222) 
 plot(W,F12,'b',-W,F12,'b'); 
 title('�˲����źŵķ�Ƶ����'); 
 xlabel('Ƶ�ʣ�Rad/s��'); 
 subplot(223) 
 plot(W,F13,'b',-W,F13,'b'); 
 title('�������źŵķ�Ƶ����'); 
 xlabel('Ƶ�ʣ�Rad/s��'); 
 subplot(224) 
 plot(W,F14,'b',-W,F14,'b'); 
 title('�ָ����źŵķ�Ƶ����'); 
 xlabel('Ƶ�ʣ�Rad/s��'); 