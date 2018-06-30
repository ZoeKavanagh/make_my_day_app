require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#from_omniauth" do
    DatabaseCleaner.clean_with :truncation #wiping out database with truncation
    FactoryBot.reload
    user = FactoryBot.create(:user, created_at: "Fri, 29 Jun 2018 19:09:55 UTC +00:00")
    let(:auth) { double :auth, provider: "MyString", uid: "MyString", info: info, credentials: credentials }
    let(:info) { double :info, name: "MyString" }
    let(:credentials) { double :credentials, expires_at: 1530097740, token: "MyString" }

    it 'should return user' do
      expect(User.from_omniauth(auth)).to eq(user)
    end
  end
end
