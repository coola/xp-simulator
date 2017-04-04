
class Media

  attr_accessor :ads
  
  def initialize
    @ads = Array.new
  end


  def add_advertising telephone_number
    @ads.push telephone_number
  end

end
