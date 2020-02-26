puts"welcome to my first assignement\n"
def display
	puts"please enter your name and age\n"
	a=gets.chomp.to_s
	b=gets.chomp.to_i
	puts "the name of the user is #{a} and his age is #{b}"
end
def number
	puts"enter the values for the array"
	array=[]
	for i in 1..5
		inp=gets.chomp.to_i
		array.push inp
	end
	puts"the array is\n"
	for j in array
		puts j
	end
end	
puts"1.display the details\n2.playing with numbers\nplease enter your choise\n"
ch=gets.chomp.to_i
case ch
	when 1 
		display
	when 2
		number
end



