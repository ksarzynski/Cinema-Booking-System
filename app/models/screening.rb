class Screening < ApplicationRecord
  belongs_to :customer
  belongs_to :film
  validates :customer_id, presence: true
  validates :film_id, presence: true
  validates :screeningdate, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validate :correct_date?

  def correct_date?
    if screeningdate < DateTime.now
      errors.add('Error', "Date can't be in the past")
    end
  end
end
