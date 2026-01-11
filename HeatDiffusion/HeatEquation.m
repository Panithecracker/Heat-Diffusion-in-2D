%solving the heat equation using explicit FD (forward in time and center in
%space)
clear all
format long
%% problem:
%%dt = D dxx  0<x<1, t >0
% u(0,t) = u(1,t) = 0
% u(x,0) = finit(x)
D = 1;
L = 1;

%% ANALYSIS OF RESULTS, COMPARING WITH THE EXACT SOLUTION 
% syms u(x,t) x t
% u(x,t) = exp(-(pi^2)*t)*sin(pi*x); %exact solution based on the initial condition and BC
% prev = -1;
% for k=3:7
%     dx = 2^(-k);
%     dt = 0.25*(dx^2)/(D);
%     x = linspace(0,L,2^k +1);
%     for i=1:length(x) %initial condition setting
%         T0(i,1) = sin(pi*x(i));
%     end
%     U = SolveHeatEquation(T0,1,1,dx,dt,1);
%     U_end = U(:,size(U,2));
%     sum = 0;
%     max = -1;
%     for i=1:size(U_end,1)
%         dif = U_end(i,1)-(exp(-(pi^2))*sin(pi*x(i)));
%         sum = sum + abs(dif)^2;
%         if abs(dif) > max
%             max = abs(dif);
%         end
%     end
%     E2(k-2,1) = sqrt(dx*sum); %error in L2 norm
% %     EInf(k-2,1) = max; %maximum error magnitude aka : Linfinity norm
%     if (k>3) 
%         Rate2(k-3,1) = log2(prevE2/E2(k-2,1));
%         RateEinf(k-3,1) = log2(prevEInf/EInf(k-2,1));
%     end
% %     prevE2 = E2(k-2,1);
% %     prevEInf = EInf(k-2,1);
%     T0 = [];
% end

% 
% for n=1:1/dt
%     plot(x',A(:,n));
%     axis([0,1,0,1]);
%     pause(dt);
% end


%% PLOTTING THE APPROXIMATED SOLUTION CURVES FOR DIFFERENT DIFFUSION CONSTANT AFTER 0.5 UNITS OF TIME
% x = linspace(0,1,101);
%  for i=1:length(x) %initial condition setting
%     Initially(i,1) = sin(pi*x(i));
%  end
% dx = 0.01;
% dt = 0.25*(dx^2)/(D);
% D1 = 0.2;
% U1 = SolveHeatEquation(Initially,1,D1,dx,dt,0.5);
% plot(x',U1(:,size(U1,2)),"green");
% hold on;
% D2 = 0.5;
% U2 = SolveHeatEquation(Initially,1,D2,dx,dt,0.5);
% plot(x',U2(:,size(U2,2)),"blue");
% hold on;
% D3 = 1;
% U3 = SolveHeatEquation(Initially,1,D3,dx,dt,0.5);
% plot(x',U3(:,size(U3,2)),"red");
% xlabel("position");
% ylabel("temperature");
% title("Solution with 3 diffusions after 0.5 units of time");
% grid on;
% legend({'d=0.2','d=0.5','d=1'}); 
% 
%% PLOTTING THE APPROXIMATED SOLUTION CURVES AFTER 0.5 UNITS OF TIME WITH DIFFERENT INITIAL CONDITIONS
%  x = linspace(0,1,101);
%  for i=1:length(x) %initial condition setting
%     Initially(i,1) = sin(pi*x(i));
%  end
% dx = 0.01;
% dt = 0.25*(dx^2)/(D);
% K = [1,2,3];
% for k=1:length(K)
%     %initially sin(kx)
%     for i=1:length(x) %initial condition setting
%     Initially(i,1) = sin(K(k)*pi*x(i));
%     end
%     U = SolveHeatEquation(Initially,1,1,dx,dt,0.01);
%     plot(x',U(:,size(U,2)));
%     hold on;
% end
% legend({'k=1','k=2','k=3'});
% xlabel("position");
% ylabel("temperature");
% title("Solution with different initial conditions sin(kpix)");

%% Creating a movie 
x = linspace(0,1,11);
 for i=1:length(x) %initial condition setting
    Initially(i,1) = sin(pi*x(i));
 end
D = 0.0625;
dx = 0.1;
dt = 0.01;
U = SolveHeatEquation(Initially,1,D,dx,dt,5);
%create the video writer with 1fps
writerObj = VideoWriter('HeatEquation.mp4');
writerObj.FrameRate = 100;
%set the seconds per image
%open the video writer 
open(writerObj);
%get and write the frames into the video
for n=1:size(U,2) %number of time steps
    figure(1)
    plot(x',U(:,n),"red");
    axis([0 1 0 1]);
    frame = getframe(gcf);
    writeVideo(writerObj,frame);
end
%close the video writer object
close(writerObj);

function A = SolveHeatEquation(T0,L,D,dx,dt,Tf)
%T0 is the initial distribution vector
%L is the length of the rod
%D diffusion constant
%dx,dt are the space and time step sizes
A = zeros(L/dx +1,ceil(Tf/dt)+1);
A(:,1) = T0;
R = D*(dt/dx^2); 
for n=1:size(A,2)-1 %for the Tf/dt future instants iterate through the L/dx+1 points in space
    for j=1:size(A,1) 
        if (j == 1) || (j == size(A,1)) %handle boundary values separately
            A(j,n+1) = 0; %Dirichlet BC
        else
        A(j,n+1) = R*A(j+1,n)+(1-2*R)*A(j,n)+R*A(j-1,n); %forward in time and backward in space 
        end
    end
end
end