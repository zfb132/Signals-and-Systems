t=0:0.1:8;
%若系统以Il(t)，Vc(t)为响应，以E(t)为激励
% 确定系统状态方程和输出方程中的 a,b,c,d 矩阵 
% a=[-1 0;0 -2];
% b=[1;1];
% c=[1 0;0 1];
% d=[0];
% H(s)=(s+3)/(s*s+3*s+2)
A=[1,3,2];
B=[1,3];
[a,b,c,d] = tf2ss(B,A);
% 由于要输出状态变量，只能是单位阵
c=[1,0;0,1];
sys = ss(a,b,c,d);       %建立系统状态空间模型 
Response = impulse(sys,t);  %求系统的冲激响应 
subplot(221);
plot(t,Response(:,1),'b-','linewidth',3); 
xlabel('t','fontsize',14) 
ylabel('state1','fontsize',14)
subplot(222);
plot(t,Response(:,2),'r-','linewidth',3); 
xlabel('t','fontsize',14) 
ylabel('state2','fontsize',14) 
subplot(223);
plot(Response(:,1),Response(:,2),'linewidth',3);  %显示状态轨迹 
xlabel('state1','fontsize',14) 
ylabel('state2','fontsize',14) 