function dydt_Q_4 = int_2DoF(t, Q_4,J,F)
global Tau
%modeliranje dinamike robota
% racunanje H, C, G
[H C G] = matrix_d([Q_4(1); Q_4(2)], [Q_4(3); Q_4(4)]);

 dydtQ_2 = H\(Tau+J'*F - C*[Q_4(3);Q_4(4)]-G);

%izlaz
dydt_Q_4(1:2) = Q_4(3:4);
dydt_Q_4(3:4) = dydtQ_2;
dydt_Q_4 = dydt_Q_4';