puts "Welcome to Baratas Supermarket"
puts "=" * 30

puts "Please enter a staff name: "
name = gets.chomp

puts "Greetings, #{name}"

price = ''
answer = ''

in_total = []
while price.strip != 'x'
  print "Enter the item prices or enter x to finish: "
  price = gets.chomp
  in_total.push price.to_f
end

# print "Did you have any voucer for 10% discount? (yes/no): "
# answer = gets.chomp
# if answer == 'yes'
#   in_total.sum = in_total.sum * 0.9
#   puts in_total.sum.to_f
# elsif answer == 'no'
#   puts in_total.sum
# end

puts in_total.sum.to_f

print "Input the payment: "
payment = gets.chomp.to_f
balance = payment - in_total.sum

while payment < in_total.sum
  print "Insufficient payment: "
  payment = gets.chomp.to_f
end

if payment > in_total.sum
  puts "The balace of money is: #{balance}"
  puts "Thanks for coming."
end
#end
