
class Media

  attr_accessor :ads, :subscribers
  
  def initialize
    @ads = Array.new
		@subscribers = Array.new
  end

  def add_advertising telephone_number
    @ads.push telephone_number
  end

end
