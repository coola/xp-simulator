require "test-unit"                                                                                       
require "./src/Client.rb"                                                                                 
require "./src/ItPeople.rb"                                                                               
require "./src/Media.rb"  

class SubscriptionTests < Test::Unit::TestCase

  def setup

    @media = Media.new
    @it_people = ItPeople.new
  end

  def test_if_it_possible_to_add_advertising

    @media.add_advertising("5 55 555");                                                                  
    assert_not_nil(@media.ads);                                                                          
    assert_true @media.ads.any?                                                                          
    assert_equal "5 55 555", @media.ads.first                                                            

  end

  def test_if_media_have_subscibers_structure

    assert_not_nil @media.subscribers

  end	

  def test_if_client_can_be_added_to_subscribers_list

    @media.add_to_subscribers @it_people

  end

  def test_if_there_an_exception_if_there_was_no_publicable_implementation_on_entry

    assert_raises do
      @media.add_to_subscribers 125
    end

  end

  def test_receiving_information

    @client = Client.new
    @media.add_advertising("5 55 555")
    @media.add_to_subscribers @client
    @media.broadcast
    assert_not_empty @client.ads

  end



end
