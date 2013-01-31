total = 0
1000.times.each do |n|
	total += n if (n%3 == 0) or (n%5 == 0)
end

puts total