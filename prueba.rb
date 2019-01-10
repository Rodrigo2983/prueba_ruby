def read_alum(file_name)
	file = File.open(file_name, 'r')
	alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
	file.close
	alum
end

array = read_alum('nombre_de_alumnos.csv')

def menu

  puts "1)Nombre del alumno y promedio"
  puts "2)Inacistencias por alumno"
  puts "3)Alumnos aprobados"
  puts "4)Salir"
  puts "\n---------------------------------------------------------"
end

menu()
puts 'Ingrese una opcion'
opcion = gets.chomp.to_i

while 
