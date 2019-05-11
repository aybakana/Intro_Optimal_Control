function sonuc = geneticj3sat(x)
    global Kpmiz4;
    global Kimiz4;
    Kpmiz4 = x(1);
    Kimiz4 = x(2);
    sim('asimgenj3sat');
    
    asimj3 = max(y);

    ref=1;
    sonuc = abs(asimj3-ref);
end