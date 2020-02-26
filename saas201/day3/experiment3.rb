class Sample
	def initialize (na)
		@name=na
		puts "this is in the constructor #{@name}"
	end
	def display(tname)
		vd=tname
		puts"the name is #{vd}"
	end
	def tota x=(tn)
		puts"the last name is#{x}"
	end
end
obj=Sample.new("rahul")
obj.display "vineth" 
obj.tota("harsha")
