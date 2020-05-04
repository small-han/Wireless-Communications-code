%设定的参数
function data=code(f_n)
d_n = (160 - str2num( f_n) * 16) * 30; %一个区域的动态信道数
call_n = 0; %生成的call的次数

iii=0;
data= zeros([100,4]);

while call_n<=10000
    call_n=call_n+100;
    calls = zeros([call_n , 4]);%1:times 2:x 3:y 4:type
    iii=iii+1;
    area = zeros([27,27]);
    noreply=0;
    traffic_offer=0;
    traffic_carried=0;
    ii=0;
    jj=0;
    while ii ~= call_n
        ii = ii + 1;
        %初始化一个新的call
        calls(ii , 1) = call_n;%呼叫次数
        traffic_offer = traffic_offer + calls(ii , 1);%计算offer
        calls(ii , 2) = randi(27);%x位置
        calls(ii , 3) = randi(27);%位置
        
        kk = randi(100);%方向
        if kk > 0 && kk <= 45
            if mod(kk , 2)==1
                calls(ii , 5)=1;
            else
                calls(ii , 5)=-1;
            end
            calls(ii , 6)=0;
        elseif kk > 45 && kk <= 90
            if mod(kk , 2) == 1
                calls(ii , 6) = 1;
            else
                calls(ii , 6) = -1;
            end
            calls(ii , 5) = 0;
        else
            calls(ii , 5) = 1;
            calls(ii , 6) = 1;
        end
        %信道分配
        if area(calls(ii , 2),calls(ii , 3))==f_n%如果没有固定信道
            if d_n>=0%如果有动态信道
                d_n=d_n-1;
                calls(ii , 4)=1;%采用动态信道
            else
                noreply = noreply+1;
                calls(ii , 1)=-1;
            end
        else
            area(calls(ii , 2),calls(ii ,3)) = area(calls(ii , 2),calls(ii , 3))+1;
            calls(ii , 4) = 0;%采用固定信道
        end
        
        if jj==200
            jj=0;
            for kk = 1:call_n%处理其他的call
                if calls(kk , 2)<18 && calls(kk , 2)>9 && calls(kk , 3)<18 && calls(kk , 3)>9
                    traffic_carried=traffic_carried+1;
                end
                if calls(kk , 1) > 0%如果还在呼叫
                    calls(kk , 1) = calls(kk , 1) - 1;
                    if calls(kk , 1) == 0%如果呼叫结束
                        calls(kk , 1) = calls(kk , 1) - 1;
                        if calls(kk, 4) == 0
                            area(calls(kk , 2),calls(kk , 3)) = area(calls(kk , 2),calls(kk , 3)) - 1;
                        else
                            d_n = d_n+1;
                        end
                    else
                        if calls(kk, 4) == 0
                            area(calls(kk , 2),calls(kk , 3)) = area(calls(kk , 2),calls(kk , 3)) - 1;
                        else
                            d_n = d_n+1;
                        end
                        calls(kk , 2) = calls(kk , 2) + calls(kk , 5);
                        calls(kk , 3) = calls(kk , 3) + calls(kk , 6);
                        if calls(kk , 2)>27 || calls(kk , 2)<=0 ||calls(kk , 3)>27||calls(kk , 3)<=0
                            calls(kk,1)=-1;
                            continue;
                        end
                        
                        if area(calls(kk , 2),calls(kk , 3))==f_n%如果没有固定信道
                            if d_n>=0%如果有动态信道
                                d_n=d_n-1;
                                calls(kk , 4)=1;%采用动态信道
                            else
                                noreply = noreply+1;
                                calls(kk , 1)=-1;
                            end
                        else
                            area(calls(kk , 2),calls(kk ,3)) = area(calls(kk , 2),calls(kk , 3))+1;
                            calls(kk , 4) = 0;%采用固定信道
                        end
                    end
                end
            end
        else
            jj=jj+1;
        end
    end
    data(iii,1)=call_n;
    data(iii,2)=noreply;
    data(iii,3)=call_n-noreply;
    data(iii,4)=traffic_offer;
    
end
end