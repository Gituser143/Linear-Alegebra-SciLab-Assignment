clc; clear; close;
A=[2,1,1;4,-6,0;-2,7,2], b=[5;-2;9]
A_aug = [A b]
a=A_aug
n=3;

for i=2:n
	for j=2:n+1
		a(i,j)=a(i,j)-a(1,j)*a(i,1)/a(1,1);
	end
	a(i,1)=0;
end

for i=3:n
	for j=3:n+1
		a(i,j)=a(i,j)-a(2,j)*a(i,2)/a(2,2);
	end
	a(i,2)=0;
end

x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
	sumk=0;
	for k=i+1:n
		sumk=sumk+a(i,k)*x(k);
	end
	x(i)=(a(i,n+1)-sumk)/a(i,i);
end

disp(x(3),x(2),x(1), 'The values of x, y, z are');
disp(a(1,1),a(2,2),a(3,3), 'The values of pivots are');
