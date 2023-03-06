def method1(x)
  def is_prost?(x)
    tek=x
    del=0
    while(tek>0)
      if x%tek==0 then del+=1 end
      tek-=1
    end
    if del==2 then return true else return false end
  end

  tek = x
  sum=0
  while(tek>0)
    if x%tek==0 && !is_prost?(tek) then sum+=tek end
    tek-=1
  end
  return sum
end

x = gets.chomp.to_i
puts method1(x)
