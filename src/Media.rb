
class Media

  attr_accessor :ads, :subscribers

  def initialize
    @ads = Array.new
    @subscribers = Array.new
  end

  def add_advertising telephone_number
    @ads.push telephone_number
  end

  def add_to_subscribers client
    if !client.respond_to? :publish
      raise 'Argument should have publish method'
    end

    @subscribers.push client

  end

end
