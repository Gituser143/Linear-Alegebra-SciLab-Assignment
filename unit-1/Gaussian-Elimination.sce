rows = 3;
cols = 3;
A = zeros(rows,cols);
disp("Inputs to all matrices to be sequential left to right, top to bottom");
disp("Inputs to A begin");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:")
    end
end
B = zeros(rows,1);
disp("Inputs for B begin");
for i = 1:rows
    B(i) = input("Value for B:")
end
//A = [2 3 -1;4 4 -3;-2 3 -1];
//B = [5;3;1];
disp(A,'The given matrix is A = ');
n = length(B);
Aug = [A , B];
for j = 1:n-1
    for i = j+1:n
        Aug(i,j:n+1) = Aug(i,j:n+1)-Aug(i,j)/Aug(j,j)*Aug(j,j:n+1);
    end
end
x = zeros(n,1);
x(n) = Aug(n,n+1)/Aug(n,n);
for i = n-1:-1:1
    x(i) = (Aug(i,n+1)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
disp(x(3),x(2),x(1),'The values of x,y,z are')
disp(Aug(1,1),Aug(2,2),Aug(3,3),'The pivots are');
