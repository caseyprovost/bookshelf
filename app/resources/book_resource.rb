# frozen_string_literal: true

class BookResource < ApplicationResource
  belongs_to :publisher

  attribute :title, :string
  attribute :summary, :string
  attribute :page_count, :integer
  attribute :publication_date, :date
  attribute :publisher_uuid, :uuid
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
end
