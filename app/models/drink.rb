class Drink < ApplicationRecord
  has_many :user_drinks
  has_many :users, through: :user_drinks
  belongs_to :maker
  validates :name, presence: true
end
