module PublisherServiceStubs
  def stub_publisher_service!
    json = file_fixture('publisher.json').read
    publisher = Publisher.new(JSON.parse(json))
    allow(Publisher).to receive(:find).and_return(publisher)
  end
end

RSpec.configure do |config|
  config.include(PublisherServiceStubs)
end
