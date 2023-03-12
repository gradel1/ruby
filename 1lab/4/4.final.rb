def cycle(x)
  x.rotate(3)
end

def find_el(x)
  #x.select.with_index {|el,i| i < x.index(x.min) }
  x[0...x.index(x.min)]
end

def loc_max(x,i)
  x[i]>x[i-1] && x[i]>x[i+1]
end

def less(x)
  x.select {|i| i < x.reduce(:+)/x.length.to_f}
end

def more_times(x)
  x.select {|i| x.count(i)>3}
end

def choose(path)
  file = File.open(path)
  data = file.read.split.map {|el| el.to_i}
  puts "#{data} \nВведите номер функции: \n1 - cycle(x) \n2 - find_el(x) \n3 - loc_max(x,i) \n4 - less(x) \n5 - more_times(x) \n6 - Выход"
  numb = STDIN.gets.to_i
  until numb==6
    case numb
    when 1
      p cycle data
    when 2
      p find_el data
    when 3
      print "Введите индекс: "
      p loc_max(data, STDIN.gets.to_i)
    when 4
      p less data
    when 5
      p more_times data
    else
      puts "incorrect"
    end
    numb = STDIN.gets.to_i
  end
end

path = ARGV[0]
choose(path)
