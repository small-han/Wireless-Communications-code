%�趨�Ĳ���
f_n=0;  %һ������̶����ŵ���
call_n = 10000; %���ɵ�call�Ĵ���

d_n = 160 - f_n * 16; %һ������Ķ�̬�ŵ���
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
   if area(calls(ii , 2),calls(ii , 3))==f_n%���û�й̶��ŵ�
       if d_n>=0%����ж�̬�ŵ�
           d_n=d_n-1;
           calls(ii , 4)=1;%���ö�̬�ŵ�
       else
           noreply = noreply+1;
       end
   else
       area(calls(ii , 2),calls(ii ,3)) = area(calls(ii , 2),calls(ii , 3))+1;
       calls(ii , 4) = 0;%���ù̶��ŵ�
   end
   for kk = 1:call_n%����������call
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

