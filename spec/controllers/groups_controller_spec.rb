require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe('#new') do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe('#create') do
    it "redirects to show page" do
      post :create, params: { group: { name: 'The Group', user_ids: ["1", "2", "3"] } }
      expect(response).to have_http_status(302)
    end

    it "creates a group" do
      expect { post :create, params: { group: { name: 'The Group', user_ids: ["1", "2", "3"] } } }.to change { Group.count }.by(1)
    end
  end


end
