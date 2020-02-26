loop do
puts "enter the two numbers with which u want"
a=gets.chomp.to_i
b=gets.chomp.to_i
puts "enter the operation u want to do"
ch=gets.chomp.to_s
case ch
	when "+"
		s=a+b
		puts "the sum of the two numbers is #{s}"
	when "-"
		s=a-b
		puts "the difference of the two number is #{s}"
	when "*"
		s=a*b
		puts "the multiplication of the numbers is #{s}"
	when "/"
		s=a/b
		puts "the division of the numbers is #{s}"
	else
		puts "you have entered invalid symbol"
end
puts "do u want to continue[y/n]?"
ans=gets.chomp.to_s
		break if ans=="n"
end
