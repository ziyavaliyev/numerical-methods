%%%
% The function gaussq_tol(f, a, b, tol) finds the required number of 
% iterations n to get the tolerated value tol in interval [a,b] by
% iterating through gaussq_n and it computes the Qauss_Quadrature for n
% by computing gaussq_n
%%%

function [int, nn] = gaussq_tol(f,a,b,tol)

%Define an iterator
i=0;

%Before the first iteration of while loop toll should be bigger than tol to
%begin the while loop and with the first iteration of while loop toll gets
%it's required value. So the loop starts working and giving us the required
%amount of grid points to achieve the given tolerance with the following
%formula: |Q(n+1) - Q(n)| <= tol
toll = tol + 1;

while tol < toll
    i = i + 1;
    toll=abs(gaussq_n(f,a,b,i+1)-gaussq_n(f,a,b,i));
end
%nn is the number of grid points that we need to achieve the given
%tolerance and int is the result of Gauss-Quadrature for n grid points
nn = i;
int = gaussq_n(f, a, b, nn);