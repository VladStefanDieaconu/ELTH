t = linspace(-2, 2, 100);
x = func(t);
plot(t,x);
xlabel('Timpul');
ylabel('Valoarea lui i_L(t)');
title('Graficul lui i_L(t)');
ax = gca;
ax.YLim = [0 10];