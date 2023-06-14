matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

#1
puts "#{matrice1}"
puts "#{matrice2}"

puts "premier nombre du liste: #{matrice1.first}"
puts "le premier method dans un autre method: #{matrice1[0]}"


#2
somme = matrice1.first + matrice2[10]

puts "premier nombre de matrier1 + le dixeme nombre du matrice2: #{somme}"

#3

somme2 = matrice1.sort.last + matrice2.sort.last

puts "le somme des plus grande valuer: #{somme2}"

#4
somme3 = matrice1.sort.first + matrice2.sort.first

puts "le somme des plus petit valuer: #{somme3}"

#5
puts "le plus petit nombre de matrice1: #{matrice1.sort.first}   //   le plus petit nombre de matrice2: #{matrice2.sort.first}"

#6
matrice3 = matrice1 + matrice2

puts "Les deux matrice ensemble: #{matrice3.sort}"

