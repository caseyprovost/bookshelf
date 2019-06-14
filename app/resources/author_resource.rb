# frozen_string_literal: true

class AuthorResource < ApplicationResource
  attribute :name, :string
  attribute :bio, :string
  attribute :date_of_birth, :string
  attribute :hometown, :string
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
end
