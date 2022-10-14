class Farmer < ApplicationRecord
  has_many :vegetables
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
