class Profile < ApplicationRecord
  validates :avatar, presence: true
  belongs_to :user
end