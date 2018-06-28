require 'rails_helper'

RSpec.describe MmdController, type: :controller do

  describe('#index') do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end

# This testing should eventually be on the model.
