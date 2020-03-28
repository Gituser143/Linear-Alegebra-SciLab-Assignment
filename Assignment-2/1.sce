//Assignment

a=[0 0 0;0 0 0;0 0 0]
for i=1:3
    for j=1:3
        a(i,j) = input("Enter the values:")
    end
end
disp(a)
b=a

disp('Now we reduce the matrix to upper triangular form:')
a(2,:) = a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:) = a(3,:)-(a(3,1)/a(1,1))*a(1,:)
disp(a)
a(3,:) = a(3,:)-(a(3,2)/a(2,2))*a(2,:)
disp(a)
//disp(b)
disp('The column space is:')
f=0
for i=1:3
    for j=i:3
        if a(j,i)~=0 then
            disp(b(:,i))
            f=1
            break
        end
    end
end
if  f==0 then
    disp([0 0 0])
end
