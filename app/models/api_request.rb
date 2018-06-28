class ApiRequest < ApplicationRecord
  def self.make_request(params)
    url = "https://stark-brook-82296.herokuapp.com/events?date=#{params}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
  end
end
