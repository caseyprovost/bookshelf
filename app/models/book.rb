# frozen_string_literal: true

class Book < ApplicationRecord
  def publisher
    return nil unless publisher_uuid.present?

    OpenStruct.new(
      id: publisher_uuid,
      name: 'testing'
    )
  end

  def author
    return nil unless author_uuid.present?

    OpenStruct.new(
      id: author_uuid,
      name: 'John Wick'
    )
  end
end
