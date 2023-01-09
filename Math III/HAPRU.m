img = flipud(imread("superC_in_color.jpg"));
A = double(rgb2gray(img)); % Convert color to gray scale
pcolor(A);shading interp;colormap("gray");axis equal


[U,S,V] = svd(A); % Use SVD function directly from MATLAB 
figure (1)
semilogy(diag(S), "--" );
xlabel("Index of singular value"); ylabel("Singular values");

n = 2000; % 2000 singular values
S_re = S * diag([ones(1,n), zeros(1,size(S,2) - n)]);
figure (2)
pcolor(U*S_re*V');shading interp;colormap('gray');axis equal