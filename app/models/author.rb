# frozen_string_literal: true

class Author < JsonApiClient::Resource
  # set the api base url in an abstract base class
  self.site = "#{Rails.application.credentials[:author_service_url]}/v1"
end

