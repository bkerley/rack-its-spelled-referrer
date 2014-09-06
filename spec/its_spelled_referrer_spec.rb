require 'rack/mock'
require 'rack/its/spelled/referrer'

describe Rack::Its::Spelled::Referrer do
  let(:app) do
    double('app')
  end

  let(:url){ 'http://example.invalid' }

  subject(:request) do
    Rack::MockRequest.new described_class.new app
  end

  before :each do
    allow(app).to receive(:call).and_return [200, {}, ['ok']]
  end

  it 'lints without issue' do
    resp = nil
    expect{ resp = subject.get url, lint: true }.to_not raise_error
    expect(resp.errors).to be_empty
  end

  it 'replaces the Referer header with Referrer'
  it "isn't case sensitive"
end
