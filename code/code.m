%�趨�Ĳ���
function data=code(f_n)
f_n=str2num(f_n);

call_n = 0; %���ɵ�call�Ĵ���

iii=0;
data= zeros([100,4]);

while call_n<=10000
    call_n=call_n+100;
    calls = zeros([call_n , 4]);%1:times 2:x 3:y 4:type
    d_n = (160 -  f_n * 16) * 25; %һ������Ķ�̬�ŵ���
    iii=iii+1;
    area = zeros([27,27]);
    noreply=0;
    traffic_offer=0;
    traffic_carried=0;
    dy=0;
    dy2fixed=0;
    fixed=0;
    ii=0;
    jj=0;
    while ii ~= call_n
        ii = ii + 1;
        %��ʼ��һ���µ�call
        calls(ii , 1) = call_n;%���д���
        traffic_offer = traffic_offer + calls(ii , 1);%����offer
        calls(ii , 2) = randi(27);%xλ��
        calls(ii , 3) = randi(27);%λ��
        
        kk = randi(100);%����
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
        %�ŵ�����
        if area(calls(ii , 2),calls(ii , 3))==f_n%���û�й̶��ŵ�
            if d_n>=0%����ж�̬�ŵ�
                d_n=d_n-1;
                calls(ii , 4)=1;%���ö�̬�ŵ�
                dy=dy+1;
            else
                noreply = noreply+1;
                calls(ii , 1)=-1;
            end
        else
            area(calls(ii , 2),calls(ii ,3)) = area(calls(ii , 2),calls(ii , 3))+1;
            calls(ii , 4) = 0;%���ù̶��ŵ�
            fixed=fixed+1;
        end
        
        if jj==700
            jj=0;
            for kk = 1:call_n%����������call
                if calls(kk , 2)<18 && calls(kk , 2)>9 && calls(kk , 3)<18 && calls(kk , 3)>9
                    traffic_carried=traffic_carried+1;
                end
                if calls(kk , 1) > 0%������ں���
                    calls(kk , 1) = calls(kk , 1) - 1;
                    if calls(kk , 1) == 0%������н���
                        calls(kk , 1) = calls(kk , 1) - 1;
                        if calls(kk, 4) == 0
                            area(calls(kk , 2),calls(kk , 3)) = area(calls(kk , 2),calls(kk , 3)) - 1;
                        else
                            d_n = d_n+1;
                            if area(calls(kk , 2),calls(kk , 3))~=0
                                dy2fixed=dy2fixed+1;
                            end
                        end
                    else
                        if calls(kk, 4) == 0
                            area(calls(kk , 2),calls(kk , 3)) = area(calls(kk , 2),calls(kk , 3)) - 1;
                        else
                            d_n = d_n+1;
                            if area(calls(kk , 2),calls(kk , 3))~=0
                                dy2fixed=dy2fixed+1;
                            end
                        end
                        calls(kk , 2) = calls(kk , 2) + calls(kk , 5);
                        calls(kk , 3) = calls(kk , 3) + calls(kk , 6);
                        if calls(kk , 2)>27 || calls(kk , 2)<=0 ||calls(kk , 3)>27||calls(kk , 3)<=0
                            calls(kk,1)=-1;
                            continue;
                        end
                        
                        if area(calls(kk , 2),calls(kk , 3))== f_n%���û�й̶��ŵ�
                            if d_n>=0%����ж�̬�ŵ�
                                d_n=d_n-1;
                                calls(kk , 4)=1;%���ö�̬�ŵ�
                                dy=dy+1;
                            else
                                noreply = noreply+1;
                                calls(kk , 1)=-1;
                            end
                        else
                            area(calls(kk , 2),calls(kk ,3)) = area(calls(kk , 2),calls(kk , 3))+1;
                            calls(kk , 4) = 0;%���ù̶��ŵ�
                            fixed=fixed+1;
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
    data(iii,5)=dy;
    data(iii,6)=dy2fixed;
    data(iii,7)=fixed;
    
end
end