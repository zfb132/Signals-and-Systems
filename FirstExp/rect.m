%��ԳƷ����ϳ� 
t=0:0.001:0.1; 
% a�Ǹ��ݸ���Ҷ�ֽ����ĳ˷�ϵ��
a=12/pi;  
y=a*sin(100*pi*t);  
subplot(221) 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 1 �����޼���'); 
y=0;
for i=1:2  
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(222); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 2 �����޼���'); 
y=0;
for i=1:5 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(223) 
plot(t,y);  
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 5 �����޼���'); 
t=0:0.0001:0.1;  
y=0;  
for i=1:100  
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(224); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 100 �����޼���'); 