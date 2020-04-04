//To find the eigen values and eigen vectors of any 3x3 matrix.
clc; close(); clear;
A = [0 0 0; 0 0 0; 0 0 0]
for i=1:3
    for j=1:3
        a(i,j) = input('Enter the values:')
    end
end
lam = poly(0,'lam')
lam = lam
charMat = A-lam*eye(3,3)
disp(charMat,'The characteristic Matrix is')
charPoly = poly(A,'lam')
disp(charPoly,'The characteristic polynomial is')
lam = spec(A)
disp(lam,'The eigen values of A are')
function[x,lam] = eigenvectors(A)
    [n,m] = size(A);
    lam = spec(A)';
    x = [];
    for k=1:3
        b = A-lam(k)*eye(3,3); //characteristic matrix
        c = b(1:n-1,1:n-1); //coeff mat for thr reduced system
        b1 =-b(1:n-1,n); //rhs vector for the reduced system
        y = c\b1; //solution for the reduced system
        y = [y:1]; //complete eigen vector
        y = y/norm(y); //make unit eigen vector
        x = [x y];
    end
endfunction

get f('eigenvectors')
[x,lam] = eigenvectors(A)
disp(x,'The eigen vectors of A are')
