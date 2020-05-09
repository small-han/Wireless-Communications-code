n=8;%更改不同的n，生成不同的图
switch n
    case 31
        load data10.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y);
        hold on
        
        load data9.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data8.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data7.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data6.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data5.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data0.mat
        p = polyfit(data(:,1),data(:,2),1);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        title("fig3-1")
        legend('10','9','8','7','6','5','0')
    case 32
        load data10.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data9.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data8.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data7.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data6.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data5.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        
        load data0.mat
        p = polyfit(data(:,1),data(:,3),2);
        y= polyval(p,data(:,1));
        plot(data(:,1),y)
        hold on
        title("fig3-2")
        legend('10','9','8','7','6','5','0')
    case 4
        load data10.
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data9.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data8.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data7.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data6.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data5.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data0.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        p = polyfit(data(:,2),data(:,3),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        title("fig4")
        legend('10','9','8','7','6','5','0')
    case 5
        x=[0,5,6,7,8,9,10];
        y1=[];
        y2=[];
        y3=[];
        load data0.mat
        y1(1)=data(80,3)/data(40,1);
        y2(1)=data(90,3)/data(40,1);
        y3(1)=data(100,3)/data(40,1);
        load data5.mat
        y1(2)=data(80,3)/data(40,1);
        y2(2)=data(90,3)/data(40,1);
        y3(2)=data(100,3)/data(40,1);
        load data6.mat
        y1(3)=data(80,3)/data(40,1);
        y2(3)=data(90,3)/data(40,1);
        y3(3)=data(100,3)/data(40,1);
        load data7.mat
        y1(4)=data(80,3)/data(40,1);
        y2(4)=data(90,3)/data(40,1);
        y3(4)=data(100,3)/data(40,1);
        load data8.mat
        y1(5)=data(80,3)/data(40,1);
        y2(5)=data(90,3)/data(40,1);
        y3(5)=data(100,3)/data(40,1);
        load data9.mat
        y1(6)=data(80,3)/data(40,1);
        y2(6)=data(90,3)/data(40,1);
        y3(6)=data(100,3)/data(40,1);
        load data10.mat
        y1(7)=data(80,3)/data(40,1);
        y2(7)=data(90,3)/data(40,1);
        y3(7)=data(100,3)/data(40,1);
        plot(x,y1,'-o')
        hold on
        plot(x,y2,'-o')
        hold on
        plot(x,y3,'-o')
        hold on
        legend('8000','9000','10000')
    case 6
        load data9.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,5)=data(:,5)./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,5),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data8.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,5)=data(:,5)./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,5),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data7.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,5)=data(:,5)./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,5),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data6.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,5)=data(:,5)./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,5),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data5.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,5)=data(:,5)./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,5),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        title("fig6")
        legend('9','8','7','6','5')
    case 7
        load data9.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,6)=data(:,6)./(data(:,6)+data(:,7));
        p = polyfit(data(:,2),data(:,6),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data8.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,6)=data(:,6)./(data(:,6)+data(:,7));
        p = polyfit(data(:,2),data(:,6),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data7.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,6)=data(:,6)./(data(:,6)+data(:,7));
        p = polyfit(data(:,2),data(:,6),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data6.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,6)=data(:,6)./(data(:,6)+data(:,7));
        p = polyfit(data(:,2),data(:,6),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        load data5.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,6)=data(:,6)./(data(:,6)+data(:,7));
        p = polyfit(data(:,2),data(:,6),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),y)
        hold on
        title("fig7")
        legend('9','8','7','6','5')
    case 8
        load data9.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,7)=(data(:,7)+data(:,6))./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,7),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),data(:,7));
        hold on
        load data8.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,7)=(data(:,7)+data(:,6))./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,7),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),data(:,7))
        hold on
        load data7.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,7)=(data(:,7)+data(:,6))./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,7),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),data(:,7))
        hold on
        load data6.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,7)=(data(:,7)+data(:,6))./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,7),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),data(:,7))
        hold on
        load data5.mat
        data(:,2)= sort(data(:,2)./data(:,1));
        data(:,7)=(data(:,7)+data(:,6))./(data(:,5)+data(:,7));
        p = polyfit(data(:,2),data(:,7),1);
        y= polyval(p,data(:,2));
        plot(data(:,2),data(:,7))
        hold on
        title("fig8")
        legend('5','6','7','8','9')
        
        
end