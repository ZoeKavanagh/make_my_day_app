require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe('#new') do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(200)
    end
  end
end
