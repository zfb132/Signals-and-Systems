t=0:0.1:8;
%��ϵͳ��Il(t)��Vc(t)Ϊ��Ӧ����E(t)Ϊ����
% ȷ��ϵͳ״̬���̺���������е� a,b,c,d ���� 
% a=[-1 0;0 -2];
% b=[1;1];
% c=[1 0;0 1];
% d=[0];
% H(s)=(s+3)/(s*s+3*s+2)
A=[1,3,2];
B=[1,3];
[a,b,c,d] = tf2ss(B,A);
% ����Ҫ���״̬������ֻ���ǵ�λ��
c=[1,0;0,1];
sys = ss(a,b,c,d);       %����ϵͳ״̬�ռ�ģ�� 
Response = impulse(sys,t);  %��ϵͳ�ĳ弤��Ӧ 
subplot(221);
plot(t,Response(:,1),'b-','linewidth',3); 
xlabel('t','fontsize',14) 
ylabel('state1','fontsize',14)
subplot(222);
plot(t,Response(:,2),'r-','linewidth',3); 
xlabel('t','fontsize',14) 
ylabel('state2','fontsize',14) 
subplot(223);
plot(Response(:,1),Response(:,2),'linewidth',3);  %��ʾ״̬�켣 
xlabel('state1','fontsize',14) 
ylabel('state2','fontsize',14) 