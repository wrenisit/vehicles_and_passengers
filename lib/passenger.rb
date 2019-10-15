require 'pry'
class Passenger
attr_accessor :name, :age
  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end
