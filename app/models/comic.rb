class Comic < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :genre
end