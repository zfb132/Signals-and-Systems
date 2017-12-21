%奇对称方波合成 
t=0:0.001:0.1; 
% a是根据傅里叶分解计算的乘法系数
a=12/pi;  
y=a*sin(100*pi*t);  
subplot(221) 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 1 项有限级数'); 
y=0;
for i=1:2  
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(222); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 2 项有限级数'); 
y=0;
for i=1:5 
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(223) 
plot(t,y);  
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 5 项有限级数'); 
t=0:0.0001:0.1;  
y=0;  
for i=1:100  
    y=y+a*(sin((2*i-1)*100*pi*t)/(2*i-1));  
end  
subplot(224); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 100 项有限级数'); 