clc;
clear
A=[1,1,1;1,2,2;1,2,3];
n=length(A(1,:));
Aug=[A, eye(n,n)];
N=1:n;
for i=1:n
	dummy1=N;
	dummy1(i)=[];
	index(i, :) = dummy1;
end

//Forward Elimination
for j=1:n
	[dummy2, t] = max(abs(Aug(j:n, j)));
	lrow=t+j-1;
	Aug([j, lrow], :)=Aug([lrow, j], :);
	Aug(j, :)=Aug(j, :)/Aug(j,j);
	for i=index(j,:)
		Aug(i, :)=Aug(i,:) -Aug(i,j)/Aug(j,j)*Aug(j,:);
	end
end
Inv_A=Aug(:, n+1:2*n);
disp(Inv_A);
