
%1.c)
total = 0;
for i=1:20000
    count = 1;
    twosets = false;
    array = zeros(1,20);
    while (twosets == false)
        array(unidrnd(20)) = array(unidrnd(20)) + 1;
        if array(1:20) >= 2
            twosets = true;
        end
        count = count + 1;
    end
total = total + count;
end
couponscollected = floor(total/20000)