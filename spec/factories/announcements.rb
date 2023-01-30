FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-30 17:32:56" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
