function [X, dX] = forward_k(q, dq, J)

global l1 l2

% Dekartove kordinate
x =l1*cos(q(1))+l2*cos(q(1)+q(2));
z =l1*sin(q(1))+l2*sin(q(1)+q(2));
X = [x; z];

% Brzina u Dekartovim kordinatama
dX = J*dq; 
end