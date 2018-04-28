mu = 11/20;
lambda = 1;
c =2;
rho = lambda/(c*mu);
p0 = 0;
for k = 0:c-1
    p0 = p0+((c*rho)^k/factorial(k));
end
pc = ( ((c*rho)^c/factorial(c)) * (1/(1-rho)) );
Pq = pc/(p0 + pc);

W = Pq/(c*mu - lambda);
Wr = W + 1/mu;
