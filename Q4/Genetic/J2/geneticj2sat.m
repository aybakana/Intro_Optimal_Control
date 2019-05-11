function sonuc = geneticj2sat(x)
    global Kpmiz3;
    global Kimiz3;
    Kpmiz3 = x(1);
    Kimiz3 = x(2);
    sim('ITSEmizgenj2sat');
    sonuc = ITSEsat(end);
end