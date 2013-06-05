def initialize 
	@first_num = ""
	@second_num = ""
end
class String
  def is_integer?
    self.to_i.to_s == self
  end
end

puts "Hello! I'm an interactive calculator!"
def enter_value1
	puts "Enter the first number"
@first_num = gets.chomp
end
def enter_value2
	puts "Enter the second number"
@second_num = gets.chomp
end
 	enter_value1
 
 	if @first_num.is_integer? #|| second_num.to_i.is_a?(Float)
		puts "Ok"
	else
		puts "Error! Type the number - not a text!"
		enter_value1
	end
	enter_value2
	if @second_num.is_integer? #|| second_num.to_i.is_a?(Float)
		puts "Ok"
	else
		puts "Error! Type the number - not a text!"
 	  enter_value2
	end
puts "Enter operator"
operator = gets.chomp

result = case operator
when '+'

  @first_num.to_i + @second_num.to_i
  
when '-'
 	 @first_num.to_i - @second_num.to_i
 	
when  '*'
	@first_num.to_i * @second_num.to_i
  
when  '/'
	begin
  @first_num.to_i / @second_num.to_i
 	
 	rescue ZeroDivisionError
 		puts "Can not divided by zero!"
 	end
 else
 	puts "incorrect operator (use only '+' '-' '/' '*')"
end
p result