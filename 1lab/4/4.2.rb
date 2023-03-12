def find_el(x)
  x.select.with_index {|el,i| i < x.index(x.min) }
end

p find_el [2,2,4,1,4,1]
