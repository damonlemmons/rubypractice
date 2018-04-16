# # to print out the numbers from 1 -20
# #i = 0
# # while i < 20 do
# #   i+=1
# #   p i
# # end

# to print out number from 20 - 1
# i = 21
# while i > 0 do
#   i-=1
#   p i
# end

# puts "Pick a random number"
# x = gets
# x = x.to_i
# if x <= 10
#   puts "valid"
# else
#   puts "invalid"
# end

# i = 0
# while i < 100 do
#   i+=1
#   if i % 3 == 0 && i % 5 ==0
#     p "FizzBuzz"
#   elsif i % 3 == 0
#     p "Fizz"
#   elsif i % 5 == 0
#       p "Buzz"
#   else
#       p i
#   end
# end

# def sum_these_numbers(a, b)
#     p a + b
#   end
#
# sum_these_numbers(3, 2)
# we need puts because we are in atom.  Do not need puts in a shell like irb

# def is_even(x)
#   unless x % 2 == 0
#     p false
#   else
#     p true
#   end
# end
#
# is_even(91)

words = ["booty", "round", "squishy", "bold"]
words.each do |element|
  puts element.upcase
end
