%�۲� Gibbs ���� 
t=0:0.00001:0.04;  
% a�Ǹ��ݸ���Ҷ�ֽ����ĳ˷�ϵ��
a=12/pi;  
y=0;  
for i=1:3 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(221) 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 3 �����޼���'); 
y=0;  
for i=1:5 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(222); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 5 �����޼���'); 
y=0;  
for i=1:10 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(223) 
plot(t,y);  
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 10 �����޼���'); 
y=0;  
for i=1:100  
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(224); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 100 �����޼���');
% ��ʾGibbs����ķ�ֵ
percent=sprintf('%4.2f',((max(y)-3)/6)*100);
m='\leftarrow ';
m=strcat(m,percent,'%');
text(0.01,3,m);