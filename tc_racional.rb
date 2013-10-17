# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def setup
    @frac1 = Fraccion.new(5,4)
    @frac2 = Fraccion.new(1,6)
  end

  def test_sum
	result = @frac1.+(@frac2)
    assert_equal(Fraccion.new(17,12)._num, result._num)
    assert_equal(Fraccion.new(17,12)._den, result._den)
  end
  
  def test_sub
	result = @frac1.-(@frac2)
    assert_equal(Fraccion.new(13,12)._num, result._num)
    assert_equal(Fraccion.new(13,12)._den, result._den)
  end
  
  def test_prod
  	result = @frac1.*(@frac2)
    assert_equal(Fraccion.new(5,24)._num, result._num)
    assert_equal(Fraccion.new(5,24)._den, result._den)
  end
  
  def test_div
	result = @frac1./(@frac2)
    assert_equal(Fraccion.new(15,2)._num, result._num)
    assert_equal(Fraccion.new(15,2)._den, result._den)
  end

end
