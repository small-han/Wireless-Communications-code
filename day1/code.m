%设定的参数
f_n=0;  %一个区域固定的信道数
call_n = 10000; %生成的call的次数

d_n = 160 - f_n * 16; %一个区域的动态信道数
area = zeros([27,27]);
calls = zeros([call_n , 4]);%1:times 2:x 3:y 4:type
noreply=0; 
traffic_offer=0;

ii=0;
while ii ~= call_n
   ii = ii + 1;
   calls(ii , 1) = call_n;
   traffic_offer = traffic_offer + calls(ii , 1);
   calls(ii , 2) = randi(27);
   calls(ii , 3) = randi(27);
   if area(calls(ii , 2),calls(ii , 3))==f_n%如果没有固定信道
       if d_n>=0%如果有动态信道
           d_n=d_n-1;
           calls(ii , 4)=1;%采用动态信道
       else
           noreply = noreply+1;
       end
   else
       area(calls(ii , 2),calls(ii ,3)) = area(calls(ii , 2),calls(ii , 3))+1;
       calls(ii , 4) = 0;%采用固定信道
   end
   for kk = 1:call_n%处理其他的call
       if calls(kk , 1) > 0
           calls(kk , 1) = calls(kk , 1) - 1;
           if calls(kk , 1) == 0
               calls(kk , 1) = calls(kk , 1) - 1;
               if calls(kk, 4) == 0
                   area(calls(kk , 2),calls(kk , 3)) = area(calls(kk , 2),calls(kk , 3)) - 1;
               else
                   d_n = d_n+1;
               end
           end
       end
   end  
end

