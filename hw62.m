
W = zeros(17,1);
for x = 15:31;
lambda1=x/35;
    %ES1 = sum of (1/x)*(i/15) from i=1 to i=x
    ES1 = (1+x)/30;
    %ES1sq = sum of (1/x)*(i/15)^2 from i=1 to i=x
    ES1sq = ((x+1)*(2*x+1))/1350;
    % for rho1 < 1, x must be <= 31
    rho1 = lambda1*ES1;
    W1 = (lambda1*ES1sq)/(2*(1-rho1));
    lambda2 = (35-x)/35;
    % ES2 = sum of (1/(35-x))*(i/15) from i=x+1 to i=35
    ES2 = (x+36)/30;
    % ES2sq = sum of 1/(35-x)*(i/15)^2  from i=x+1 to i=35
    ES2sq = (2*x^2 +73*x + 2556)/1350;
    % for rho2 < 1, x must be >= 15
    rho2 = lambda2*ES2;
    W2 = (lambda2*ES2sq)/(2*(1-rho2));
    W(x-14) = (x/35)*W1 + ((35-x)/35)*W2;
end

lowest_wait = W(1);
current_x = 15;
optimal_x = 15;
for j = 1:17   
    if W(j) < lowest_wait
        lowest_wait = W(j);
        optimal_x=current_x;
    end
    current_x=current_x+1;
end
lowest_wait %#ok<*NOPTS>
optimal_x



plot(15:31,W,'r*','Markersize',6)
set(gca,'FontSize',12)
xlabel('x','FontSize',14)
ylabel('Mean waiting time','FontSize',14)