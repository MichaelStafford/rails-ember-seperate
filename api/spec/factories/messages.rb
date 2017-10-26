# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    text { Faker::Lorem.word }
  end
end
