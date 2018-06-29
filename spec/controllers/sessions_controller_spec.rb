require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "#create" do
    xit "returns http success" do
      post :create, params: {
        state: "8a84fb29650a7c3710a12ffde0b424e4d9bf697a82236932",
        code: "4/AAD4u800rj9EBGm9FqcU7xUuP42ayEy1qY0E7CSO8fH71x-kEN5k4Jgvu9E5WfYQRS6AoN70ygyYQvixbBFzaq0",
        provide: "google_oauth2" }
      expect(response).to have_http_status(302)
    end
  end

  describe "#destroy" do
    it "returns http success" do
      delete :destroy
      expect(response).to have_http_status(302)
    end
  end
end
