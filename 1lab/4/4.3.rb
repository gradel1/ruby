def loc_max(x,i)
  x[i]>x[i-1] && x[i]>x[i+1]
end

p loc_max([2,2,4,1,4,1],2)
