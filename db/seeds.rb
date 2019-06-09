# frozen_string_literal: true

if Book.count == 0
  FactoryBot.create_list(:book, 50)
end
