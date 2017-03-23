require "test-unit"
require "./src/Client.rb"
require "./src/ItPeople.rb"
require "./src/Media.rb"

class FirstSmokeTestClass < Test::Unit::TestCase

  def test_if_this_test_framework_works
    
    assert_equal(2, 1 + 1)
  
  end
  
  def test_if_there_are_actors_of_that_tragedy

    client = Client.new 
    it_people = ItPeople.new
    media = Media.new

    assert_not_nil(client);
    assert_not_nil(it_people);
    assert_not_nil(media);

  end
end
