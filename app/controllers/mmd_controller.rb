require 'net/http'
require 'json'

class MmdController < ApplicationController

  def index
    url = "https://stark-brook-82296.herokuapp.com/events?date=#{params[:date]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @events = JSON.parse(response)
  end

  def request_from_api(params)

  end

end
