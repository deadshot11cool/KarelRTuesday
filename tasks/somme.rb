num1= rand(1..50)
num2= rand(1..50)
num3 = num1 + num2

puts "num1 = #{num1}"
puts "num2 = #{num2}"
puts "Trouve le somme pour moi!!!"

reponse = gets.chomp.to_i

until reponse == num3
	if 
		puts "tu n'est pas intelligente, essay encore"	
	end
	reponse = gets.chomp.to_i
end

puts "tu est intelligente!!!"