%Programming exercise 2
%Group 1
%Ziya Valiyev 417775
%Johyeon Yang 418832
%Elena Ivanova 420206
%Akin Bulgurlu 418693

%First row in each example gives Gauss Quadrature with input of n
%Second row in each example gives:
% [Gauss Quadrature with input of tol, n to achieve this tol]
%The functions can be run as sections
%For output delete the semicolons

%% Example 1 with not exact values
e_one_n_notex = gaussq_n(@(x) x^10, -1, 1, 4);
[e_one_tol_notex, n_one_notex] = gaussq_tol(@(x) x^10, -1, 1, 0.005);

%% Example 1 with exact values
e_one_n_ex = gaussq_n(@(x) x^10, -1, 1, 100);
[e_one_tol_ex, n_one_ex] = gaussq_tol(@(x) x^10, -1, 1, 0.0001);

%% Example 2 with not exact values
e_two_n_notex = gaussq_n(@(x) sin(x), 0, pi, 2);
[e_two_tol_notex, n_two_notex] = gaussq_tol(@(x) sin(x), 0, pi, 0.05);

%% Example 2 with exact values
e_two_n_ex = gaussq_n(@(x) sin(x), 0, pi, 1000);
[e_two_tol_ex, n_two_ex] = gaussq_tol(@(x) sin(x), 0, pi, 0.00001);

%% Example 3 with not exact values
e_three_n_notex = gaussq_n(@(x) 1/(10^(-2)+x^2), -2, 3, 40);
[e_three_tol_notex, n_three_notex] = gaussq_tol(@(x) 1/(10^(-2)+x^2), -2, 3, 0.5);

%% Example 3 with exact values
e_three_n_ex = gaussq_n(@(x) 1/(10^(-2)+x^2), -2, 3, 400);
[e_three_tol_ex, n_three_ex] = gaussq_tol(@(x) 1/(10^(-2)+x^2), -2, 3, 0.00006);