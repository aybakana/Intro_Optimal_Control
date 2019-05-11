function sonuc = genetic(x)
    global Kpmiz2;
    global Kimiz2;
    Kpmiz2 = x(1);
    Kimiz2 = x(2);
    sim('ISEmizgenj1sat');
    sonuc = ISEsat(end);
end