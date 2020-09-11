function [Tau, Tau_FF, Tau_FB] = kontroler(q, q_ref,dq,dq_ref,ddq, ddq_ref, Kp1, Kd1, H, C, G)

    
    Tau_FF = G+C*dq_ref+H*ddq_ref;
   

    Tau_FB = Kp1.*(q_ref-q) + Kd1.*(dq_ref-dq);
    
   
    Tau = Tau_FF + Tau_FB;

end