def add (n1, n2)
  return n1 + n2
end 

def subtract (u1,u2)
  return u1 - u2
end

def sum (m)
  return m.sum
end

def multiply (b1,b2)
  return b1 * b2
end

def power (e1,e2)
  return e1 ** e2
end

def factorial (r)
  if r == 0
    return 1
  else
    return r.downto(1).inject(:*)
  end
end