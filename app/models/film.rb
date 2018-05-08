class Film < ApplicationRecord
  validates :director, :length => { :in => 3..30 }, :format => { :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/, :message => "has forbidden characters" }, presence: true
 validates :release_year, numericality: { greater_than_or_equal_to: 1895, less_than_or_equal_to: Date.today.year  }, presence: true
 validates :title, presence: true;

def self.search(search)
  where("title LIKE ? OR director LIKE ? OR release_year LIKE ? OR date LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
end


end
