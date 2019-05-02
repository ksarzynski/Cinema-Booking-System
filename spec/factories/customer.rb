FactoryBot.define do
  factory :customer do |f|
    f.firstname { "Kamil" }
    f.secondname { "Kowalski" }
    f.email { Faker::Internet.safe_email }
  end
end
