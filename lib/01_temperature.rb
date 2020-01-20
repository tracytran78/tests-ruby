def ftoc (f)
  to_c = (f.to_f - 32) * 5/9
  return to_c
end

def ctof (c) 
  to_f = (c.to_f * 9/5) + 32
  return to_f
end