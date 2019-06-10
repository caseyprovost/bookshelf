# frozen_string_literal: true

class Publisher < JsonApiClient::Resource
  # set the api base url in an abstract base class
  self.site = "#{Rails.application.credentials[:publisher_service_url]}/v1"
end
