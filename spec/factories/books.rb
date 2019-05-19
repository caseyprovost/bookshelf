# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    sequence(:title) { |i| "#{Faker::Movies::HarryPotter.spell}-#{i}" }
    summary { Faker::Movies::HarryPotter.quote }
    page_count { Faker::Number.number(3) }
    publication_date { "2019-05-13" }
    publisher_uuid { SecureRandom.uuid }
    author_uuid { SecureRandom.uuid }
  end
end
