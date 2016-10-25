require 'pry'
class CarWash
  attr_reader :location # you'll want to add :state, :city here too

  def initialize(location, year)
    @location =location
    @year = year # No reason not to just name this ivar @opening_year
  end

  # def opening_year # with naming the ivar on ln 7, you no longer need this method
  #   @year
  # end

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

  # This setup above (location_city, location_state, define_locations) is a little wonky.
  # Every time you call location_city and location_state, you will RESET the @city and @state variables.
  # Try to figure out how you can set them ONCE, and then name a method that will just call that variable (attr_reader is an option here too)
end
