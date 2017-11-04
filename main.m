clear all
fileName = 'Conditions.xlsx';
bLeft = xlsread(fileName,'H4:H6');
bRight = xlsread(fileName,'I4:I6');
A = xlsread(fileName, 'D4:G6');
C = xlsread(fileName, 'D7:G7'); 

m = size(A, 1); 
n = size(A, 2); 

b = [bRight;bLeft];
A = toCanonicalForm(A);
C = [C';zeros(2*m,1)];

x = linprog(C,[],[],A,b,zeros(length(C),1));
disp(x);