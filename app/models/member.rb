class Member < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
end
