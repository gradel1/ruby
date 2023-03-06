def min(ar)
  min=ar[0]
  for i in ar
    if i<min then min = i end
  end
  return min
end

def first(ar)
  ind = 0
  while ind<ar.length && ar[ind]<0
    ind+=1
  end
  ind==ar.length ? -1 : ind
end

def func(numb,path)
  file = File.open(path)
  data = file.read.split.map {|el| el.to_i}
  case numb.to_i
  when 1
    puts min data
  when 2
    puts first data
  else
    puts "incorrect"
  end
end

numb = ARGV[0]
path = ARGV[1]
func(numb,path)
