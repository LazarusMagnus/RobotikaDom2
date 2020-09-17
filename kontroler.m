function [Tau, Tau_FF, Tau_FB] = kontroler(q, q_ref,dq,dq_ref,ddq, ddq_ref, Kp1, Kd1, H, C, G,F,Tt,J)

    F_ext = Tt * [-F(1);-F(2); zeros(4,1)];
    
    Tau_FF = G+C*dq_ref+H*ddq_ref+J' * [F_ext(1); F_ext(2)];
   

    Tau_FB = Kp1.*(q_ref-q) + Kd1.*(dq_ref-dq);
    
   
    Tau = Tau_FF + Tau_FB;

end