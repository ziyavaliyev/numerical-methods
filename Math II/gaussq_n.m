%%%
% The function gaussq_n(f, a, b, n) approximates integral of a function f
% in interval [a,b] with n grid points
%%%
function [int] = gaussq_n(f,a,b,n)

A = zeros(n);
%A is a symmetric tridiagonal matrix
for k = 1:(n-1) 
    A(k,k+1) = k/(sqrt(4*(k^2)-1));
    A(k+1,k) = A(k,k+1);
end

%grid points as eigenvalues of symmetric tridiagonal matrix
[EV,EW] = eig(A);
%x is lambda of the spectral decomposition
x = diag(EW);
%calculate the weighs of the Gauss-Quadrature
gew = 2*(EV(1,:).^2);
%y is an input for our function f, which will be used in Gauss-Quadrature
y = ((b-a)/2).*x + (a+b)/2;
%Applying function f to all inputs y
G = arrayfun(f, y);

%Gauss-Quadrature formula
int = 0;
for i = 1:n
    int = int + G(i)*gew(i);
end
int = int*(b-a)/2;
end
