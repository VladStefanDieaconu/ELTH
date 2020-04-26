function ex1_a()
  % Matricea coeficientilor
  A = [0 0 1 -1 0 0 0 0 0;
     1 -1 0 0 0 0 0 0 0;
     -1 0 0 0 0 1 0 0 0;
     0 1 1 0 -1 -1 1 0 0;
     0 0 0.5 0 1 0 0 0 0;
     0 1 -0.5 0 0 0 0 0 -1;
     0 1 0 0 0 1.5+15i 0 0 0;
     0 0 0 0 1 0 -100i 0 0;
     0 0 0 0 1 -1.5-15i 0 1 0];
  
  rad2 = sqrt(2);
  col = [-rad2/2 + (rad2/2)*i; -rad2/2 + (rad2/2)*i; i; 0; 3*(rad2/2 + (rad2/2)*i); 0; 5; 0; 0];
  sol = A\col;
  disp(sol);
  
  I_G = [sol(4); sol(1); 1*i; rad2/2 - rad2/2*i];
  U_G = [3*(rad2/2 + (rad2/2)*i); 5; sol(8); sol(9)];
  S_G = I_G' * U_G

  I_r = [sol(2); sol(3); sol(5); sol(6); sol(7)];
  Z_r = [1; 0.5; 1; 1.5+15i; -100i];
  Z_r = diag(Z_r);
  S_rep = I_r' * Z_r * I_r

  %verificam bilantul de putere
  if abs(S_G) - abs(S_rep) < 0.001
    disp("Bilantul este verificat!");
  endif

  ang = angle(sol(6));
  r = abs(sol(6));
  t = linspace(0,0.1,1000);
  y = r * sqrt(2) * sin(100*pi*t + ang);
  plot(t, y);
endfunction
