function result = f(Kd_temp, Kp_temp) % Function to find the Overshoot
    global Kp;
    global Kd;
    Kp = Kp_temp;
    Kd = Kd_temp;
    sim('q4_c_simulink_PD');
    overshoot = max(y);
    ref=1;
    result = abs(overshoot-ref);
end