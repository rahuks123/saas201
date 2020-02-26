puts"enter the number of element in the array"
n=gets.chomp.to_i
a=Array.new(n)
 puts"enter the array elements\n"
for i in 0...n do
        a[i]=gets.chomp.to_i
end
loop do
puts "1. Add value2. minimum 3. maximum 4.sum 5. average 6. search 7.display 8.delete value by index 9. delete value 10. exit"
puts"\nenter your choice\n"
ch=gets.chomp.to_i
case ch
	when 1 
	puts "enter the element u want to add"
	b=gets.chomp.to_i
	a.push(b)
	puts"the ele is insterted\n"
	when 2
	puts"the min ele in array is #{a.min}"
	when 3
	puts"the max ele in the array is #{a.max}"
	when 4
	puts"the sum of all the elements in the array is #{a.sum}"
	when 5
	t=a.sum
	av=t/a.size()
	puts"the average of the array elements is #{av}"
	when 6
	puts "enter the element you want to search\n"
	m=gets.chomp.to_i
	flag=0
	i=0
	while a[i]!='\0'  do
		if a[i]==m
			flag=1
			puts"the element #{m} is found at #{i+1}"
			break
		end
		i=i+1
	end
	if flag==0
		puts"the element is not present in the array\n"
	end
	when 7
	i=0
	puts"the array elements are\n"
	while a[i]!='\0' 
		puts "#{a[i]}\n"
		i=i+1
	end
	when 8
	puts "enter the index of element u want to delete\n"
	t=gets.chomp.to_i
	a.delete_at(t)
	when 9 
	puts "enter the value u want to delete\n"
	v=gets.chomp.to_i
	a.delete(v)
	when 10
		puts"exiting"
	else
		puts"invalid input"
end 
break if ch==10
end
