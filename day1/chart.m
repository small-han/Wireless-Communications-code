n=32;%更改不同的n，生成不同的图
switch n
    case 31
        load data10.mat
        plot(data(:,1),data(:,2))
        hold on
        load data9.mat
        plot(data(:,1),data(:,2))
        hold on
        load data8.mat
        plot(data(:,1),data(:,2))
        hold on
        load data7.mat
        plot(data(:,1),data(:,2))
        hold on
        load data6.mat
        plot(data(:,1),data(:,2))
        hold on
        load data5.mat
        plot(data(:,1),data(:,2))
        hold on
        load data0.mat
        plot(data(:,1),data(:,2))
        hold on
        title("fig3-1")
        legend('10','9','8','7','6','5','0')
    case 32
        load data10.mat
        plot(data(:,1),data(:,3))
        hold on
        load data9.mat
        plot(data(:,1),data(:,3))
        hold on
        load data8.mat
        plot(data(:,1),data(:,3))
        hold on
        load data7.mat
        plot(data(:,1),data(:,3))
        hold on
        load data6.mat
        plot(data(:,1),data(:,3))
        hold on
        load data5.mat
        plot(data(:,1),data(:,3))
        hold on
        load data0.mat
        plot(data(:,1),data(:,3))
        hold on
        title("fig3-2")
        legend('10','9','8','7','6','5','0')
    case 4
        load data10.mat
        plot(data(:,2),data(:,3))
        hold on
        load data9.mat
        plot(data(:,2),data(:,3))
        hold on
        load data8.mat
        plot(data(:,2),data(:,3))
        hold on
        load data7.mat
        plot(data(:,2),data(:,3))
        hold on
        load data6.mat
        plot(data(:,2),data(:,3))
        hold on
        load data5.mat
        plot(data(:,2),data(:,3))
        hold on
        load data0.mat
        plot(data(:,2),data(:,3))
        hold on
        title("fig4")
        legend('10','9','8','7','6','5','0')
end