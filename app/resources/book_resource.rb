# frozen_string_literal: true

class BookResource < ApplicationResource
  attribute :title, :string
  attribute :summary, :string
  attribute :page_count, :integer
  attribute :publication_date, :date
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
end
