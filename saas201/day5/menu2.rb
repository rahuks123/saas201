class Student
	def initialize
	end
	public
	def input
		puts"enter the name,rollno,state,branch of the student\n"
		@name=gets.chomp
		@rollno=gets.chomp.to_i
		@state=gets.chomp
		@branch=gets.chomp
	end
	def display
		puts"the details\n name :#{@name}\nroll no :#{@rollno}\nstate :#{@state}\nbranch #{@branch}\n"
	end
	def disbranch
		if @branch=="it"
			input()
		end
	end
end
s=new.Student(10)
puts"enter the number of students\n"
n=gets.chomp.to_i
for i in 0...n
        s[i].input()
end

puts"1. Add new student 2. display all students 3. display student by branch 4. display students by state"
puts"5. Search students by roll number 6. search by part of the name, 7.delete by roll number"
puts" 8. count and display number of students by state 9. count and display number of students by branch 10. exit\n"
puts"enter ur choice\n"
ch=gets.chomp.to_i
case ch
	when 2
	for i in 0...n
        	s[i].display()
	end
end
	
	
