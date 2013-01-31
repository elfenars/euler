# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome? x
  x = x.to_s
  length  = x.length
  half    = length / 2

  first_half  = x[0...half]
  second_half = x[half...length]

  first_half == second_half.reverse
end

palindrome  = 0
product     = 0

for num1 in 99..999
  for num2 in 99..999
    product = num1*num2 if is_palindrome?(num1*num2)
  end
  palindrome = product if product > palindrome
end

puts palindrome