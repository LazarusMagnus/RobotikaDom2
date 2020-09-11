function [H, C, G] = matrix_d(q, dq)

global m1 m2 I1 I2 l1 l2 ls g Fint Tau l

lc1 = l1/2;
lc2 = l2;


%matrica inercije
H11 = I1 + I2 + m1 * lc1^2 + m2 * (l1^2 + lc2^2 + 2*l1*lc2*cos(q(2)));  
H12 = m2 * l1 * lc2 * cos(q(2)) + m2 * lc2^2 + I2; 
H21 = H12; 
H22 = m2 * lc2^2 + I2;

H = [H11 H12 ; H21 H22];

% matrica brzinskih koeficijenata
h = m2 * l1^2 * sin(q(2));
C11 = -2 * h * dq(2);
C12 = -h * dq(2);
C21 = h * dq(1);
C22 = 0;

C = [C11 C12 ; C21 C22];

%gravitaciona matrica
% G11 = m1 * lc1 * g * cos(q(1)) + m2 * g * (lc2 * cos(q(1) + q(2)) + l1 * cos(q(1)));
% G21 = m2 * lc2 * g * cos(q(1) + q(2));
G11=0;
G21=0;

G = [G11; G21];
end