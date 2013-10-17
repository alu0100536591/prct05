def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end

#puts gcd(13,2)
#puts gcd(1598,812)
#puts gcd(12,6)

