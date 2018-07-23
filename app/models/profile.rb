class Profile < ApplicationRecord
  extend FriendlyId
  friendly_id :uid, use: :slugged
  has_many :users
end

