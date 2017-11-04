clear all;
fileName = 'Conditions.xlsx';
bLeft = xlsread(fileName,'H4:H6');
bLeft = bLeft .* (-1);
bRight = xlsread(fileName,'I4:I6');
A = xlsread(fileName, 'D4:G6');
C = xlsread(fileName, 'D7:G7'); 
total = xlsread(fileName, 'D8:D8'); 

m = size(A, 1); 
n = size(A, 2); 

b = [bRight;bLeft];
b = [b; total; total*(-1)];
A = toCanonicalForm(A);
lb = [0,0,0,0];
x = linprog(C,A,b,[],[],lb,[]);
disp(x);