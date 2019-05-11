function sonuc = geneticj2(x)
    global Kpmiz3;
    global Kimiz3;
    Kpmiz3 = x(1);
    Kimiz3 = x(2);
    sim('ITSEmizgenj2');
    sonuc = ITSEal(end);
end