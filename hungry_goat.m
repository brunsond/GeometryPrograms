%Solves the Generalized Hungry Goat Problem.

alpha = input('Enter desired fraction: ');
options = optimset('Display','off');
theta = fsolve(@(theta) (2-4*cos(theta)*cos(theta))*theta+sin(2*theta)-(1-alpha)*pi,1,options);
tether = 2*cos(theta);
fprintf('Output length is %0.4f.\n',tether)

figure
t_1 = linspace(0,2*pi,1000);
t_2 = linspace(-theta,theta,1000);
polarplot(t,2*cos(t_1),'k','linewidth',2)
hold on
polarplot(t_2,tether*ones(1,length(t_2)),'k','linewidth',2)
hold on
polarplot([0,0],[0,tether],'r','linewidth',2)

figure
theta = zeros(1,100);
alpha = linspace(0.01,1,100);
for i = 1:100
    theta(i) = fsolve(@(theta) (2-4*cos(theta)*cos(theta))*theta+sin(2*theta)-(1-alpha(i))*pi,1,options);
end
plot(alpha,2*cos(theta),'k','linewidth',2)
xlabel('1-\alpha')
ylabel('l')
title('Rope length v. area fraction')
