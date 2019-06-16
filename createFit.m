function [fitresult, gof] = createFit(num_exp, num, x, Source)
  if num_exp==3
     if num==1
         [xData, yData] = prepareCurveData( x, Source );
         % Задание параметров
         ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))', 'independent', 'x', 'dependent', 'y' );
         opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
         opts.Display = 'Off';
         opts.Lower = [-1 -1 -1 0 0 0 0 0 0 0 0 0];
         opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 50 80 200];
         opts.Upper = [1 1 1 1 1 1 1 1 1 250 250 250];
         % Интерполяция
         [fitresult, gof] = fit( xData, yData, ft, opts );
         % Построение графика
         figure( 'Name', 'Аппроксимированный сигнал' );
         h = plot( fitresult, xData, yData );
         legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
         xlabel t
         ylabel F(t)
         grid on
     elseif num==2
         [xData, yData] = prepareCurveData( x, Source );
         % Задание параметров
         ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))', 'independent', 'x', 'dependent', 'y' );
         opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
         opts.Display = 'Off';
         opts.Lower = [-1 -1 -1 0 0 0 0 0 0 0 0 0];
         opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 60 90 180];
         opts.Upper = [1 1 1 1 1 1 1 1 1 250 250 250];
         % Интерполяция
         [fitresult, gof] = fit( xData, yData, ft, opts );
         % Построение графика
         figure( 'Name', 'Аппроксимированный сигнал' );
         h = plot( fitresult, xData, yData );
         legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
         xlabel t
         ylabel F(t)
         grid on
     elseif num==6
         [xData, yData] = prepareCurveData( x, Source );
         % Задание параметров
         ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))', 'independent', 'x', 'dependent', 'y' );
         opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
         opts.Display = 'Off';
         opts.Lower = [-1 -1 -1 0 0 0 0 0 0 0 0 0];
         opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 35 50 100];
         opts.Upper = [1 1 1 1 1 1 1 1 1 250 250 250];
         % Интерполяция
         [fitresult, gof] = fit( xData, yData, ft, opts );
         % Построение графика
         figure( 'Name', 'Аппроксимированный сигнал' );
         h = plot( fitresult, xData, yData );
         legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
         xlabel t
         ylabel F(t)
         grid on
     end
  end
  if num_exp==4
     if num==4
         [xData, yData] = prepareCurveData( x, Source );
         % Задание параметров
         ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))+a4*exp(-(x-g4).^2.*(b4*(x<=g4)+c4*(x>g4)))', 'independent', 'x', 'dependent', 'y' );
         opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
         opts.Display = 'Off';
         opts.Lower = [-1 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0];
         opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 50 100 140 230];
         opts.Upper = [1 1 1 1 1 1 1 1 1 1 1 1 250 250 250 250];
         % Интерполяция
         [fitresult, gof] = fit( xData, yData, ft, opts );
         % Построение графика
         figure( 'Name', 'Аппроксимированный сигнал' );
         h = plot( fitresult, xData, yData );
         legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
         xlabel t
         ylabel F(t)
         grid on
     elseif num==5
         [xData, yData] = prepareCurveData( x, Source );
         % Задание параметров
         ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))+a4*exp(-(x-g4).^2.*(b4*(x<=g4)+c4*(x>g4)))', 'independent', 'x', 'dependent', 'y' );
         opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
         opts.Display = 'Off';
         opts.Lower = [-1 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0];
         opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 25 60 70 150];
         opts.Upper = [1 1 1 1 1 1 1 1 1 1 1 1 250 250 250 250];
         % Интерполяция
         [fitresult, gof] = fit( xData, yData, ft, opts );
         % Построение графика
         figure( 'Name', 'Аппроксимированный сигнал' );
         h = plot( fitresult, xData, yData );
         legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
         xlabel t
         ylabel F(t)
         grid on
     elseif num==7
         [xData, yData] = prepareCurveData( x, Source );
         % Задание параметров
         ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))+a4*exp(-(x-g4).^2.*(b4*(x<=g4)+c4*(x>g4)))', 'independent', 'x', 'dependent', 'y' );
         opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
         opts.Display = 'Off';
         opts.Lower = [-1 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0];
         opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 10 50 70 150];
         opts.Upper = [1 1 1 1 1 1 1 1 1 1 1 1 250 250 250 250];
         % Интерполяция
         [fitresult, gof] = fit( xData, yData, ft, opts );
         % Построение графика
         figure( 'Name', 'Аппроксимированный сигнал' );
         h = plot( fitresult, xData, yData );
         legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
         xlabel t
         ylabel F(t)
         grid on
     end
  end
  if num_exp==5
     [xData, yData] = prepareCurveData( x, Source );
     % Задание параметров
     ft = fittype( 'a1*exp(-(x-g1).^2.*(b1*(x<=g1)+c1*(x>g1)))+a2*exp(-(x-g2).^2.*(b2*(x<=g2)+c2*(x>g2)))+a3*exp(-(x-g3).^2.*(b3*(x<=g3)+c3*(x>g3)))+a4*exp(-(x-4).^2.*(b4*(x<=g4)+c4*(x>g4)))+a5*exp(-(x-g5).^2.*(b5*(x<=g5)+c5*(x>g5)))', 'independent', 'x', 'dependent', 'y' );
     opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
     opts.Display = 'Off';
     opts.Lower = [-1 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
     opts.StartPoint = [0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 60 80 90 120 200];
     opts.Upper = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 250 250 250 250 250];
     % Интерполяция
     [fitresult, gof] = fit( xData, yData, ft, opts );
     % Построение графика
     figure( 'Name', 'Аппроксимированный сигнал' );
     h = plot( fitresult, xData, yData );
     legend( h, 'Исходный сигнал', 'Аппроксимированный сигнал', 'Location', 'NorthEast' );
     xlabel t
     ylabel F(t)
     grid on
  end