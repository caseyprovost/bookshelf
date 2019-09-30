# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, :summary, :author_uuid, :publisher_uuid, presence: true

  def publisher_id
    publisher_uuid
  end

  def author_id
    author_uuid
  end
end
