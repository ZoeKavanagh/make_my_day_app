require 'net/http'
require 'json'

class MmdController < ApplicationController

  def index
    @events = ApiRequest.make_request(params[:date])
  end
end
