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

      if @events == [] 
        flash[:notice] = 'No event matches your request. Try again!'
      end
    end
  end
end
