def less(x)
  x.select {|i| i < x.reduce(:+)/x.length.to_f}
end

p less [1,2,3,4]
