%导入数据
filename = 'data.csv';
data = csvread(filename);
data = data';
subplot(3,1,1);
%自变量
x = 0:29;
hold on;
plot(x+1990,data);
grid on
%因变量
b = polyfit(x,data,1)
k1 = b(1);
b1 = b(2);
x = 0:60;
y = k1 * x + b1;

plot(x+1990,y);
xlabel('Year')
ylabel('Score')
title('Straight line fitting(Original state)')
hold off;
subplot(3,1,2);
hold on;
grid on;
data(31) = data(30) * 1.3;
x = 0:30;
plot(x+1990,data);
b = polyfit(x,data,1)
k2 = b(1);
b2 = b(2);
x = 0:60;
y = k2 * x + b1;
plot(x+1990,y);
xlabel('Year')
ylabel('Score')
title('Straight line fitting(1.3)')
hold off
subplot(3,1,3);
grid on;
hold on;
data(31) = data(30) * 1.6;
x = 0:30;
plot(x+1990,data);
b = polyfit(x,data,1);
k3 = b(1);
b3 = b(2);
x = 0:60;
y = k3 * x + b1;
plot(x+1990,y);
xlabel('Year')
ylabel('Score')
title('Straight line fitting(1.6)')
hold off


