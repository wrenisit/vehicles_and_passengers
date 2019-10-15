require 'minitest/autorun'
require 'minitest/pride'
require './lib/passenger'

class PassengerTest < Minitest::Test
  def test_it_exisits
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    assert_instance_of Passenger, charlie
    assert_equal "Charlie", charlie.name
    assert_equal 18, charlie.age
  end

  def test_method_adult?
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    refute taylor.adult?
    assert charlie.adult?
  end

  def test_method_driver?
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    assert_equal false, charlie.driver?
  end

  def test_drive_method
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    assert_equal false, charlie.driver?
    charlie.drive
    assert_equal true, charlie.driver?
  end

end
