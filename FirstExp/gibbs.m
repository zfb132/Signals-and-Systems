%观察 Gibbs 现象 
t=0:0.00001:0.04;  
% a是根据傅里叶分解计算的乘法系数
a=12/pi;  
y=0;  
for i=1:3 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(221) 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 3 项有限级数'); 
y=0;  
for i=1:5 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(222); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 5 项有限级数'); 
y=0;  
for i=1:10 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(223) 
plot(t,y);  
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 10 项有限级数'); 
y=0;  
for i=1:100  
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(224); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 100 项有限级数');
% 显示Gibbs现象的峰值
percent=sprintf('%4.2f',((max(y)-3)/6)*100);
m='\leftarrow ';
m=strcat(m,percent,'%');
text(0.01,3,m);