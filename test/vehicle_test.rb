require 'minitest/autorun'
require 'minitest/pride'
require './lib/vehicle'
require './lib/passenger'

class VehicleTest < Minitest::Test
  def test_it_exisits
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_instance_of Vehicle, vehicle
    assert_equal "2001", vehicle.year
    assert_equal "Honda", vehicle.make
    assert_equal "Civic", vehicle.model
  end

  def test_vehicle_speeding?
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    assert_equal false, vehicle.speeding?
    vehicle.speed
    assert_equal true, vehicle.speeding?
  end

  def test_method_to_add_passenger
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    assert_equal [],  vehicle.passengers
    vehicle.add_passenger(charlie)
    assert_equal 1, vehicle.passengers.count
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    assert_equal 3, vehicle.passengers.count
  end

  def test_num_adults_method
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)
    assert_equal 2, vehicle.num_adults
  end
end
