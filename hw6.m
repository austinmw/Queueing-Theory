



n = 35;
lamabda = 1;
r = 15; 

W = zeros(14,1);

% Compute the mean waiting time for x = 21 to 34
for x = 21:34
    % Counter 1
    lambda1 = x/35;
    ES1 = (1+x)/30;
    ES1sq = sum((1:x).^2)/225/x;
    rho1 = lambda1*ES1;
    W1 = (lambda1 * ES1sq)/2/(1-rho1);
    % Counter 2
    lambda2 = (40-x)/40;
    ES2 = (x+41)/30;
    ES2sq = sum(((x+1):40).^2)/(9000-225*x);
    rho2 = lambda2*ES2;
    W2 = (lambda2 * ES2sq)/2/(1-rho2);
    % average waiting time
    W(x-20) = (x/40)*W1 + (40-x)/40*W2;
end

% plot W(x) against x
plot(21:34,W,'r*','Markersize',6)
set(gca,'FontSize',12)
xlabel('x','FontSize',14)
ylabel('Mean waiting time','FontSize',14)
grid 
%print -depsc week05_q1_plot
    