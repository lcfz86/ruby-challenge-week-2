puts "Welcome to Baratas Supermarket"
puts "=" * 30

puts "Please enter a staff name: "
name = gets.chomp

puts "Greetings, #{name}"

loop do
  price_item = []
  price = ''
  while price.strip != 'x'
    print "Enter the item prices or enter x to finish: "
    price = gets.chomp
    price_item.push price.to_f
    puts price == 'x'
    puts price_item.sum
  end
end
