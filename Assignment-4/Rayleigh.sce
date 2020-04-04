//Largest eigen value

clear; clc; close();
a = [0 0 0; 0 0 0; 0 0 0]
for i=1:3
    for j=1:3
        a(i,j) = input('Enter the values:')
    end
end
disp(a,'A = ')
//initial vector
u0 = [1 1 1]';
disp(u0,'The initial vector is')
v = a*u0
a1 = max(u0)
disp(a,'First approximation to eigen value is ')
while abs(max(v)-a1)>0.002
    disp(v,'current eigen vector is')
    a1 = max(v)
    disp(a1,'Current eigen value is')
    u0 = v/max(v)
    v = a*u0
end
format('v',4)
disp(max(v),'The largest eigen value is: ')
format('v',5)
disp(u0,'The corresponding eigen vector is: ')
