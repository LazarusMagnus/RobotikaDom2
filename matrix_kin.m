function J =matrix_kin(q)

global l1 l2

J11 =-l1*sin(q(1))-l2*sin(q(1)+q(2));
J12 = -l2*sin(q(1)+q(2));
J21 = l1*cos(q(1))+l2*cos(q(1)+q(2));
J22 =l2*cos(q(1)+q(2));

J = [J11 J12;...
     J21  J22];
end
