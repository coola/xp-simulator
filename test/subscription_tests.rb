require "test-unit"                                                                                       
require "./src/Client.rb"                                                                                 
require "./src/ItPeople.rb"                                                                               
require "./src/Media.rb"  

class SubscriptionTests < Test::Unit::TestCase

	def setup
  
	  @media = Media.new
	
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

end
