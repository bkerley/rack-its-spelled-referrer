require 'rack/mock'
require 'rack/its/spelled/referrer'

describe Rack::Its::Spelled::Referrer do
  let(:app) do
    spy('app', call: [200, {}, ['ok']])
  end

  let(:url){ 'http://example.invalid' }

  let(:middleware){ described_class.new app }

  subject(:request) do
    Rack::MockRequest.new middleware
  end

  it 'lints without issue' do
    resp = nil
    expect{ resp = subject.get url, lint: true }.to_not raise_error
    expect(resp.errors).to be_empty
  end

  it 'replaces the Referer header with Referrer' do
    resp = subject.get(url, lint: true, 'HTTP_REFERER' => url)
    expect(resp.errors).to be_empty
    expect(app).to have_received(:call).with(hash_including('HTTP_REFERER' => url, 'HTTP_REFERRER' => url))
  end
end
