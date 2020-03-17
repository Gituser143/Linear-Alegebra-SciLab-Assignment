clc
funcprot(0)   //if variables are redefined do nothing
format('v',10)
A = input("Enter a matrix: ")

function subspaces(A)
    
    disp(A,'A = ');
    [m,n] = size(A);
    disp(m,'m = ','--------');
    disp(n,'n = ');
    [v,pivot] = rref(A);
    disp(rref(A),"Echelon Form = ",'--------')
//    disp(pivot,'--------')
    
    r = length(pivot)
    disp(r,'rank = ')
    
    cs = A(:,pivot);
    disp('--------');
    disp(cs,'Column Space = ');
    
    ns = kernel(A);
    disp('--------');
    disp(ns,'Null Space = ');
    
    rs = A(1:r,:)';
    disp('--------');
    disp(rs,'Row Space = ');
    
    lns = kernel(A');
    disp('--------');
    disp(lns,'Left Null Space = '); 
    
endfunction


//Rahul Kata
