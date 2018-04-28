K = 365; % number of coupons (i.e., days of the year) 
iteration_num = 10^5; % number of independent iterations
T_sum = 0; %keeps track of sum of stopping times accross all iterations (to compute average)
for i=1:iteration_num
    success = 0; %reset flag
    T = 0; %reset stopping time
    coupon_count = zeros(1,K); % each entry i in the vector counts the number of coupons of type i that were collected 
    while success == 0
        T = T+1; %increases stopping time
        coupon_type = unidrnd(K); %coupon collected uniformly at random
        coupon_count(coupon_type) = coupon_count(coupon_type) +1; %increment by 1 counter for collected coupon 
        if coupon_count(coupon_type) == 2 %end when two coupons of same type are collected
            success = 1; % change stopping criterion for other problems
        end
    end
    T_sum = T_sum + T;
end
T_mean = T_sum/iteration_num %estimate of the mean of the stopping time

