# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true

  def publisher_id
    publisher_uuid
  end

  def author_id
    author_uuid
  end
end
