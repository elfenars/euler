# Function to find the fibonacci result for a given location.
def fib(n)
  n < 2 ? n : fib(n-1) + fib(n-2)
end

# Find the location of the fibonacci result > 4.000.000
i = 0
n_fib = 0
n_to_check = 0

while n_fib < 4_000_000 do
  n_fib = fib(i)

  if n_fib > 4000000
    n_to_check = i
    break
  else
    i += 1
  end
end

# Sum the fibonacci results that are even.
total = 0
n_to_check.times.each do |j|
  result = fib(j)
  total += result if result%2 == 0
end

puts total