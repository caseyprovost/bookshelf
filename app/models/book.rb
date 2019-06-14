# frozen_string_literal: true

class Book < ApplicationRecord
  def publisher
    return nil unless publisher_uuid.present?
    Publisher.find(publisher_uuid).first
  end

  def publisher_id
    publisher_uuid
  end

  def author_id
    author_uuid
  end

  def author
    return nil unless author_uuid.present?
    Author.find(author_uuid).first
  end
end
