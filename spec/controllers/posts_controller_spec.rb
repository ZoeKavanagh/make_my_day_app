require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before(:each) do
      @group = FactoryBot.create(:group)
    end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST #create" do
    it "creates a post" do
      expect { post :create, params: { post: { content: 'Hello World!' } } }.to change { Post.count }.by(1)
    end
  end
end
