function sonuc = f(Kd_temp, Kp_temp) % This function is used to find the ISE value
    global Kp;
    global Kd;
    Kp = Kp_temp;
    Kd = Kd_temp;
    sim('q2_a_simulink_PD');
    sonuc = ise(end);
end