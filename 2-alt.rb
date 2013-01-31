sum = 0
a = 0
b = 1
c = 0

while (c <= 4_000_000)
	c = a + b
  a = b
  b = c

  if c%2 == 0
    sum += c
  end
end

puts sum