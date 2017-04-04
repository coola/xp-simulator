require "test-unit"
require "./src/Client.rb"
require "./src/ItPeople.rb"
require "./src/Media.rb"

class ActorsTestClass < Test::Unit::TestCase

  def setup

    @client = Client.new
    @it_people = ItPeople.new
    @media = Media.new

  end

  def test_if_there_are_actors_of_that_tragedy

    assert_not_nil(@client);
    assert_not_nil(@it_people);
    assert_not_nil(@media);

  end

  def test_if_it_possible_to_add_advertising
    
     @media.add_advertising("5 55 555");
     assert_not_nil(@media.ads);
     assert_true @media.ads.any?
     assert_equal "5 55 555", @media.ads.first

  end  


end
