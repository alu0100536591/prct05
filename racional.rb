# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	def initialize(n,d)
		@_num, @_den = n, d
		minimize()
	end
	
	def minimize
		gcd = gcd(@_num, @_den)
		@_num /= gcd
		@_den /= gcd
	end
	
	def to_s
		"#{@_num} / #{@_den}"
	end
end

f1 = Fraccion.new(20,5)
puts f1

