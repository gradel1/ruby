def more_times(x)
  x.select {|i| x.count(i)>3}
end

p more_times [1,2,3,4,2,5,2,6,2]
