num1= rand(1..100)
num2= 2

puts "devine le!!!!!!"
num2 = gets.chomp.to_i


until num2 == num1
	if num1 > num2
		puts "trop petit"
	elsif num1 < num2
		puts "trop grand" 	
	end
	num2 = gets.chomp.to_i
end

puts "yay bonne reponse!!"