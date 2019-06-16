clear, clc
load('A');load('B');load('C');load('D');load('E');load('F');load('G');
Source=input('Введите сигнал для аппроксимации (A, B, C, D, E, F, G):\n');
if Source==A
    num=1;
    num_exp=3;
elseif Source==B
    num=2;
    num_exp=3;
elseif Source==C
    num=3;
    num_exp=5;
elseif Source==D
    num=4;
    num_exp=4;
elseif Source==E
    num=5;
    num_exp=4;
elseif Source==F
    num=6;
    num_exp=3;
elseif Source==G
    num=7;
    num_exp=4;
end
x=1:250;
Approx = createFit(num_exp, num, x, Source);