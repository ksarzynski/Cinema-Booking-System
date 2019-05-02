class User < ApplicationRecord
enum role: [:booker, :programmer]
after_initialize :set_default_role, :if => :new_record?
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_default_role
   self.role ||= :booker
  end
end
