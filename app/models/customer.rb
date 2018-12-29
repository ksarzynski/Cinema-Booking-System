class Customer < ApplicationRecord
  has_many :screenings, dependent: :destroy
  validates :firstname, length: { in: 2..30 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, message: 'has forbidden characters' }, presence: true
  validates :secondname, length: { in: 2..30 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, message: 'has forbidden characters' }, presence: true
  validates :email, length: { in: 3..30 }, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: 'is not valid' }, presence: true

  def self.search(search)
    where('firstname LIKE ? OR secondname LIKE ? OR email LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
