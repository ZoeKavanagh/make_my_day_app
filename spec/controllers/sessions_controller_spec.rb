require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #create" do
    xit "returns http success" do
      get :create
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(302)
    end
  end
end
