FactoryBot.define do
  factory :screening do |f|
    f.film_id { 1 }
    f.customer_id { 1 }
    f.screeningdate { "2020-02-03T04:05:06+00:00" }
    f.price { 12 }
  end
end
