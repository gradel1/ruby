def cycle(x)
  3.times {x.push x.shift}
  x
end

p cycle [1,2,3,4,5,6,7]
