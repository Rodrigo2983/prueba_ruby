def read_alum(file_name)
	file = File.open(file_name, 'r')
	alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
	file.close
	alum
end

array = read_alum('nombre_de_alumnos.csv')

def menu
  puts "\n---------------------------------------------------------"
  puts "1)Nombre del alumno y promedio"
  puts "2)Inacistencias por alumno"
  puts "3)Alumnos aprobados"
  puts "4)Salir"
  puts "\n---------------------------------------------------------"
end

menu()
puts 'Ingrese una opcion'
opcion = gets.chomp.to_i

while opcion !=4

	if opcion  == 1
		array.each do |alu|
			nombre = alu[0]
			notas = alu.map{ |n| n.to_i}.sum
			promedio = notas
			puts "#{nombre}, y su promedio es de #{promedio}"
		end

	elsif opcion == 2

	elsif opcion == 3
		# haga la magia
else
	puts "ingrese un opcion valida"
end

menu()
puts 'Ingrese una opcion'
opcion = gets.chomp.to_i

puts "adios"
end
