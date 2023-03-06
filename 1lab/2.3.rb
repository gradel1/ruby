def method3(x)
  def nod(a,b)
    if a==0 || b==0 then return 0 end
    if a%b == 0 then return b
    else nod(b,a%b)
    end
  end
  def is_prost?(x)
    tek=x
    del=0
    while(tek>0)
      if x%tek==0 then del+=1 end
      tek-=1
    end
    if del==2 then return true else return false end
  end
  def prostsum(x)
    sum=0
    x.each_char do |i|
      if is_prost?(i.to_i) then sum+=i.to_i end
    end
    return sum
  end

  kol=0
  tek=x
  while (tek>0)
    if x%tek!=0 && nod(tek,x)>1 && nod(tek,prostsum(tek.to_s))==1 then
      kol+=1
    end
    tek-=1
  end
  return kol
end

x = gets.chomp.to_i
puts method3(x)
