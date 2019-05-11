function sonuc = f(Kd_temp, Kp_temp) % This function is used to find the ITSE value
    global Kp;
    global Kd;
    Kp = Kp_temp;
    Kd = Kd_temp;
    sim('q4_b_simulink_PD');
    sonuc = itse(end);
end