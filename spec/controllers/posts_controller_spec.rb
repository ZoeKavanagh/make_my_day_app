require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST #create" do
    let(:user) { FactoryBot.create(:user) }
    let(:group) { FactoryBot.create(:group) }
    before { allow(controller).to receive(:current_user) { user } }

    it "creates a post" do
      allow(Group).to receive(:find_by).and_return(group)
      expect { post :create, params: { post: { content: 'Hello World!' } } }.to change { Post.count }.by(1)
    end
  end
end
