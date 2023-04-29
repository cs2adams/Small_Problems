# multiples_of_3_and_5.rb

def multisum(num)
  (1..num).to_a.select { |i| i % 3 == 0 || i % 5 == 0 }.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
