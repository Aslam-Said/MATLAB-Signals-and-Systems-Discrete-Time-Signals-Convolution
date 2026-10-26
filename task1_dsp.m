clc;
clear;
close all;
N = 12;
m_arr = [4, 5, 7, 10];
n = 0:(2*N - 1);
for i = 1:length(m_arr)  % matlab indexing starts at 1 instead of zero
    m = m_arr(i);
    x = sin(2*pi*m*n/N);
    subplot(2, 2, i);
    stem(n, x, 'filled');
    grid on;
    xlabel('n');
    ylabel('X_M[n]');
end
%%
clc;
clear;
close all;
n = 0:9;
k_arr = [1, 2, 4, 6];
for i = 1:length(k_arr)
    k = k_arr(i);
    omega = 2*pi*k/5;
    x = sin(omega*n);
    subplot(2, 2, i);
    stem(n, x);
    grid on;
    xlabel('n');
    ylabel('X_k[n]');
end
%%
clc;
clear;
close all;
N = 10;
n = 0:9;
x = sin(2*pi*n/N);
figure;
stem(n,x);
xlabel('n');
ylabel('x[n]');
E = sum(x.^2);
P = E/N;
fprintf('Part (a)\n');
fprintf('Energy = %.4f\n',E);
fprintf('Power = %.4f\n',P);
%%
clc;
clear;
close all;
N = 10;
n = 0:12;
x = sin(2*pi*n/N);
E = sum(x.^2);
P = E/length(n);
stem(n,x);
xlabel('n');
ylabel('x[n]');
fprintf('\nPart (b)\n');
fprintf('Energy = %.4f\n',E);
fprintf('Power = %.4f\n',P);
%%
clc;
clear;
close all;
N = 10;
n = 0:1005;
x = sin(2*pi*n/N);
E = sum(x.^2);
P = E/length(n);
stem(n,x);
xlabel('n');
ylabel('x[n]');
fprintf('Energy = %.4f\n', E);
fprintf('Power = %.4f\n', P);
%%
clc;
clear;
close all;
nx = [-3 -2 -1];
nh = [-6 -5 -4 -3 -2 -1];
x = [1 2 3];
h = [9 8 5 32 5 3];
M = length(x);
N = length(h);
ny = (nx(1) + nh(1)) : (nx(end) + nh(end));
y = zeros(1, M + N - 1);
for u = 1:N
    x1 = h(u) * [zeros(1,u-1) x zeros(1,N-u)];
    y = y + x1;
end
figure;
stem(ny, y);
grid on;
xlabel('n');
ylabel('y[n]');
%%
clc;
clear;
close all;
x = [1 2 3];
h = [9 8 5 32 5 3];
N = length(x);
M = length(h);
ymat = zeros(1, N + M - 1);
for n = 1:N+M-1
    for k = max(1, n-M+1):min(n, N)
        ymat(n) = ymat(n) + x(k)*h(n-k+1);
    end
end
figure;
stem(0:N+M-2, ymat, 'filled');
grid on;
xlabel('n');
ylabel('y[n]');
%%
clc;
clear;
close all;
x = [1 2 3];
h = [9 8 5 32 5 3];
y = conv(x, h);
n = 0:length(y)-1;
figure;
stem(n, y, 'filled');
grid on;
xlabel('n');
ylabel('y[n]');