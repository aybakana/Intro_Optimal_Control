function sonuc = f(x) % This function is used to find the ISE value
    global Kp;
    global Kd;
    Kp = x(2);
    Kd = x(1);
    sim('q2_b_simulink_PD');
    sonuc = itse(end);
end