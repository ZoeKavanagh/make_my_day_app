require 'rails_helper'

RSpec.describe ApiRequest, type: :model do
  let(:url) { "https://example.com" }
  let(:response) { nil }
  before { allow(Net::HTTP).to receive(:get).and_return(response) }
  before { allow(JSON).to receive(:parse).and_return(events) }
  let(:events) { [{ "title" => 'title', "description" => 'description', "url" => 'http://example.com', "location" => 'London', "price_range" => 1, "category" => 'Chill' }] }

  describe '#make_request' do
    it 'Returns a Json object' do
      expect(ApiRequest.make_request('2018-07-01', 'London', '1', 'Chill')).to eq(events)
    end
  end
end
