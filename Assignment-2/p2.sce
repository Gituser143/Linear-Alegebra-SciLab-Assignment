clear

a=[0 0 0;0 0 0;0 0 0]
for i=1:3
    for j=1:3
        a(i,j) = input("Enter the values:")
    end
end
disp(a)

[m,n] = size(a)
[v,pivots] = rref(a)
//disp(rref(a))
disp(v)
disp(pivots)
r = length(pivots)
disp(r,'rank = ')
cs = a(:,pivots)
disp(cs,'Column space = ')
ns = kernel(a)
disp(ns,"null space = ")
rs = v(1:r,:)'
disp(rs,'Row space = ')
lns = kernel(a')
disp(lns,"Left Null space = ")






