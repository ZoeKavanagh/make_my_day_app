require 'rails_helper'

RSpec.describe MmdController, type: :controller do
  let(:url) { "https://example.com" }
  before { allow(URI).to receive(:url).and_return(:uri) }
  let(:uri) { double :uri }
  before { allow(Net::HTTP).to receive(:get).and_return(:response) }
  before { allow(JSON).to receive(:parse).and_return(:events) }
  let(:events) { [{"title" => 'title', "description" => 'description', "price" => 5}] }

  describe('#index') do
    it 'Returns a JSON object' do

    end
  end
end

# This testing should eventually be on the model.
