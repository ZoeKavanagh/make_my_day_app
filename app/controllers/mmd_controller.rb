require 'net/http'
require 'json'

class MmdController < ApplicationController

  def index
    if params[:date] == nil && params[:location] == nil
      @events = []
    else
      @events = ApiRequest.make_request(
        params[:date],
        params[:location],
        params[:price_range],
        params[:category]
      )
    end
  end
end
