require 'rails_helper'

RSpec.describe ApiRequest, type: :model do
  let(:url) { "https://example.com" }
  # before { allow(URI).to receive(:url).and_return(:uri) }
  # let(:uri) { double :uri }
  let(:response) { nil }
  before { allow(Net::HTTP).to receive(:get).and_return(response) }
  before { allow(JSON).to receive(:parse).and_return(events) }
  let(:events) { [{"title" => 'title', "description" => 'description', "price" => 5}] }

  describe '#make_request' do
    it 'Returns a Json object' do
      valid_attribute = '2018-07-01'
      expect(ApiRequest.make_request(valid_attribute)).to eq(events)
    end
  end
end
