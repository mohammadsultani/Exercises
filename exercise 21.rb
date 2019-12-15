def roman_numeral(input_number)
    m = input_number/1000
    input_number= input_number%1000
    d = input_number/500
    input_number = input_number%500
    c = input_number/100
    input_number = input_number%100
    l = input_number/50
    input_number = input_number%50
    x = input_number/10
    input_number = input_number%10
    v = input_number/5
    input_number = input_number%5
    i = input_number/1
    m.times {print "M"}
    d.times {print "D"}
    c.times {print "C"}
    l.times {print "L"}
    x.times {print "X"}
    v.times {print "V"}
    i.times {print "I"}
end
roman_numeral(444)