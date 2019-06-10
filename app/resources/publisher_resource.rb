# frozen_string_literal: true

class BookResource < ApplicationResource
  attribute :name, :string
  attribute :description, :string
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
end

