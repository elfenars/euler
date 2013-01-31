# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def is_prime? n
  for m in 2..(Math.sqrt(n))
    if n%m == 0
      return false
    end
  end
  return true
end

number = 600_851_475_143
primes_list = []
sum_product = 1
test_number = 2 # first prime number

while sum_product < number
  if  is_prime?(test_number) and number % test_number == 0
    primes_list << test_number
    sum_product *= test_number
  end
  test_number += 1
end

puts primes_list.last