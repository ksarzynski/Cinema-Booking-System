FactoryBot.define do
  factory :film do |f|
    f.title { "Taxi Driver" }
    f.director { "Martin Scorsese" }
    f.release_year { 1976 }
    f.image { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/poster.jpg'), 'image/jpeg') }
  end
end
