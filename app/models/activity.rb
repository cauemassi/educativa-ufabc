class Activity < ApplicationRecord
  extend Enumerize
  belongs_to :user

  has_many :questions

  validates :user, presence: :true

  enumerize :theme
end
