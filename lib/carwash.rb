require 'pry'
class CarWash
  attr_reader :location

  def initialize(location, year)
    @location =location
    @year = year
  end


  def opening_year
    @year
  end

  def location_city(location)
    define_locations(location)
    @city
  end

  def location_state(location)
    define_locations(location)
    @state
  end

  def define_locations(location)
    @state =  location.split(",")[1].gsub(/ /, "")
    @city = location.split(",")[0]
  end


end
