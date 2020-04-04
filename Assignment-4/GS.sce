//Gram - Schmidt Orthogonalization

clear; close; clc;
a = [0 0 0; 0 0 0; 0 0 0]
for i=1:3
    for j=1:3
        a(i,j) = input('Enter the values:')
    end
end

disp(a,'A = ')
[m,n] = size(a)

for k=1:n
    V(:,k) = a(:,k)
    for j=1:k-1
        R(j,k) = V(:,j)'*a(:,k)
        V(:,k) = V(:,k) - R(j,k)*V(:,j)
    end
    R(k,k) = norm(V(:,k))
    V(:,k) = V(:,k)/R(k,k)
end
disp(V,'Q = ')
