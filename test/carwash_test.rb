require 'minitest/autorun'
require 'minitest/pride'
require './lib/carwash'

class CarWashTest < Minitest::Test

  def test_carwash_class_exists
    c = CarWash.new("Boston, MA", "2005")

    assert_equal CarWash, c.class
  end

  def test_it_has_an_oppening_year
    c = CarWash.new("Boston, MA", "2005")
    c1 = CarWash.new("St. Louis, MO", "2007")


    assert_equal "2005", c.opening_year
    assert_equal "2007", c1.opening_year
  end

  def test_it_has_a_city
    c = CarWash.new("Boston, MA", "2005")
    c1 = CarWash.new("St.Louis, MO", "2007")


    assert_equal "St.Louis", c1.location_city("St.Louis, MO")
    assert_equal "Boston", c.location_city("Boston, MA")
  end

  def test_it_has_a_state
    c = CarWash.new("Boston, MA", "2005")

    assert_equal "MA", c.location_state("Boston, MA")
  end

  def test_you_can_see_the_number_of_employees
    c = CarWash.new("Boston, MA", "2005")
  end

  # You won't need 2 examples in every test, one should suffice
  # In the test_it_has_a_city test, you're actually testing two different things, that it can extract a city with a simple name and with a complex name -- split that into 2 tests.
  # If you do have a need for two instances of something, use these variable names, c_1 and c2, instead of c and c1.
end
