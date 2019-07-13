# frozen_string_literal: true

class Book < ApplicationRecord
  def publisher_id
    publisher_uuid
  end

  def author_id
    author_uuid
  end
end
