K=365;% Number of coupons
gamma=1/K; 
%average = quad('(exp(-gamma.*x)+(gamma.*x).*exp(-gamma.*x))^K',0,10000)
average = quad('(exp(-x./365)+(x./365).*exp(-x./365)).^365',0,10000) % 24.6166