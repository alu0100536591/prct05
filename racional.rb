# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion 
	attr_accessor :_num, :_den
	
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
	
	def sum(frac) #suma
		n = (@_num*frac._den)+(@_den*frac._num)
		d = (@_den*frac._den)
		
		Fraccion.new(n,d)
	end
	
	def sub(frac) #resta
		n = (@_num*frac._den)-(@_den*frac._num)
		d = (@_den*frac._den)
		
		Fraccion.new(n,d)
	end
end

f1 = Fraccion.new(5,4)
f2 = Fraccion.new(1,6)
puts f1
puts f2

sum = f1.sum(f2)
puts sum

sub = f1.sub(f2)
puts sub


