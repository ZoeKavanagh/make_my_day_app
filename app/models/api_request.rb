class ApiRequest < ApplicationRecord
  def self.make_request(date, location, price_range, category)
    url = "https://stark-brook-82296.herokuapp.com/events?date=#{date}&location=#{location}&price_range=#{price_range}&category=#{category}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
