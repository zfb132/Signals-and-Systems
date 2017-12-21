% clear all;
% t=0:0.1:8;
% A=[1,3,2];
% B=[1,3];
% [a,b,c,d] = tf2ss(B,A);
% c=[1,0;0,1];
% sys=ss(a,b,c,d);
% res=impulse(sys,t);
% plot(res(:,1),res(:,2),'b-','linewidth',3);
%fs=34123;
[data,fs]=audioread('test.wav');
sound(data,fs*0.3);
% p=audioplayer(data,fs);
% play(p,[1 fs])