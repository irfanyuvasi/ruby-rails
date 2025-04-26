class Genre < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :comics, dependent: :destroy
end