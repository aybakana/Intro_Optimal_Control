function sonuc = f(x) % This function is used to find the ISE value
    global Kp;
    global Kd;
    Kd = x(1);
    Kp = x(2);
    sim('q2_a_simulink_PD');
    sonuc = ise(end);
end