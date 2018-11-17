FactoryBot.define do
  factory :customer do |f|
    f.firstname { "Kamil" }
    f.secondname { "Kowalski" }
    f.email { "kamil@kowalski.com" }
end
end
