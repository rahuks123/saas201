class Parent
	def initialize
		puts"this is the constructor of the class"
	end
#	private	
        def m1
                puts"this is the function in the parent class"
	 end
	public
	def m3	
		puts"this is a public function"
	end
end
class Child<Parent
        def m2
                puts"this is the function in the child class"
        end
end
a=Parent.new
b=Child.new
a.m1
b.m1
b.m2


