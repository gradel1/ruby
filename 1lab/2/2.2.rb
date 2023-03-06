def method2(x)
  kol=0
  x.each_char do |i|
    if i.to_i<3 then kol+=1 end
  end
  return kol
end

x = gets.chomp
puts method2 x
