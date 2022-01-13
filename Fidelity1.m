%Fidelity of [[25,1,9]]
%
clear,clc;
close  ;
p0=[0:0.05:0.8];
p1=45/8*p0.^2-75/8*p0.^3+45/8*p0.^4-9/8*p0.^5;
p000= 3*p0/4;
  EFdepolo=1-p000;
  p11=4*p1/3;
FC5131111=1-(45/8*p11.^2-75/8*p11.^3+45/8*p11.^4-9/8*p11.^5);
  
p1=3*p1/3;
% x= (45/8*p1.^2-75/8*p1.^3+45/8*p1.^4-9/8*p1.^5);
EF513 = 4*p0.^5 - 15*p0.^4 + 20*p0.^3 - 10*p0.^2 + 1;
EF513CC=4*p1.^5 - 15*p1.^4 + 20*p1.^3 - 10*p1.^2 + 1;
% FC513=4*p0.^5 - 15*p0.^4 + 20*p0.^3 - 10*p0.^2 + 1;
% toc
  pa=p0;
  pb=  0.01*pa;
 n1=3;
  % w1=[0 1 2 3];
 q0=(1-3/4*pa).^(n1-0).*((pa/4).^0);
 q1=(1-3/4*pa).^(n1-1).*((pa/4).^1);
 q2=(1-3/4*pa).^(n1-2).*((pa/4).^2);
  q3=(1-3/4*pa).^(n1-3).*((pa/4).^3);
  c=2;
 r0=(1-3/4*pb).^(c-0).*((pb/4).^0);
 r1=(1-3/4*pb).^(c-1).*((pb/4).^1);
  r2=(1-3/4*pb).^(c-2).*((pb/4).^2);
  FCBowen = q0.*r0 + 9*q1.*r0 + 6*q3.*r0 + 6*q0.*r1 + 36*q2.*r1 + 54*q3.*r1+18*q1.*r2 + 81*q2.*r2 + 45*q3.*r2 ;
  PBowen = 3*(1-FCBowen)/3;
  % x31=45/8*PBowen.^2-75/8*PBowen.^3+45/8*PBowen.^4-9/8*PBowen.^5;
  EFBowen=4*PBowen.^5 - 15*PBowen.^4 + 20*PBowen.^3 - 10*PBowen.^2 + 1;
% 
FCRep =q0.*r0 + 9*q1.*r0 + 6*q2.*r0 + 18*q1.*r1 + 38*q2.*r1 + 40*q3.*r1+18*q1.*r2 + 55*q2.*r2 + 71*q3.*r2;
PRep =  3*(1-FCRep)/3;
% x32=45/8*PRep.^2-75/8*PRep.^3+45/8*PRep.^4-9/8*PRep.^5;
EFRepe=4*PRep.^5 - 15*PRep.^4 + 20*PRep.^3 - 10*PRep.^2 + 1;

semilogy(p0,EFdepolo,'m*-.','Linewidth',1.2);
   hold on;
  semilogy(p0,EF513,'cp-.','Linewidth',1.2);
   hold on;
semilogy(p0,EF513CC,'rs-','Linewidth',1.2);
  hold on;
semilogy(p0,EFBowen,'gx--','Linewidth',1.2);
   hold on;
   semilogy(p0,EFRepe,'b>-.','Linewidth',1.2);
    hold on;
%        semilogy(p0,FC5131111,'b>-.','Linewidth',1.2);
%     hold on;
 axis([0 0.8 0  1]);

line = legend('The depolarizing channel',...+
            'The [[5,1,3]] stabilizer code',...+
            'The [[25,1,9]] concatenated quantum code',...+
         'The concatenation of [[5,1,3]] with Bowen^{\prime}s [[3,1,3;2]] EAQECC',...+
         'The concatenation of [[5,1,3]] with the [[3,1,3;2]] EA repetition code','Location','southwest'); %,'Location','northeast'
set(line, 'FontSize',9);
 xlabel('Depolarizing probability $p_a$','interpreter','latex'); ylabel('Entanglement fiedlity $F_e$','interpreter','latex');
% set(gca,'clipping','on')
  title('$p_b=0.01p_a$','interpreter','latex');
% 
  grid on;
 set(gcf,'position',[2000 200 640 510])
  hold off;
hold on;
   h11=axes('position',[0.18 0.35 0.35 0.35]);
% % xlim([0,0.4]);  
semilogy(p0,EFdepolo,'m*-.','Linewidth',1.2);
   hold on;
  semilogy(p0,EF513,'cp-.','Linewidth',1.2);
   hold on;
semilogy(p0,EF513CC,'rs-','Linewidth',1.2);
  hold on;
semilogy(p0,EFBowen,'gx--','Linewidth',1.2);
   hold on;
   semilogy(p0,EFRepe,'b>-.','Linewidth',1.2);
%    axis([0.1 0.3 0.2 1]); 
xlim([0.2,0.6]);
ylim([0.5, 1]);
% set(gcf,'position',[20,20,700,800])
hold off;
  grid on;
 

  










