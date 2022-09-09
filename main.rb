=begin
LAB 1 VAR 4 
Zaklevskyi Vladyslav IPS-32
=end

while true
  puts "Hello! I will try to help you count the V value!"
  puts "Please enter the x value or enter ex to exit:"
  x = gets.chomp.downcase
  break if x == 'ex' # word to exit the loop
  x = x.to_f
  # check_x(x)
  unless x > 0.0
      puts "Please enter x > 0"
      redo
  else
    puts "X equals to #{x}"
  end
  puts "Please enter the j value"
  j = gets.chomp.to_f
  puts "J equals to #{j}"
  puts "-*"*18
  puts "Now i will try to calculate the V value..."
  
  #I will divide the parts of expression to avoid the big size of it
  a = Math.cos(24 * Math::PI/2) # = 1.0
  b = Math.tan((Math.log(x ** 3)).abs)**5
  c = 4 * 10.0**-2.8 # = 0.006339572769844456
  d = Math.sqrt((x + Math.exp(j)).abs)
  v = a + (b + c) / d
  if v.nan? == true
    puts "Something is wrong :c Please check your input!"
  else
    puts "V = #{v}"
  end
  puts "-*"*18
  puts "*-"*18
end
