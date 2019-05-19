# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { "MyString" }
    summary { "MyText" }
    page_count { 1 }
    publication_date { "2019-05-13" }
    publisher { nil }
    author { nil }
  end
end
