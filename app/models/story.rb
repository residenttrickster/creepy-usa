class Story < ApplicationRecord
  belongs_to :user
  belongs_to :location

  has_many :story_genres
  has_many :story_cautions
  has_many :genres, through: :story_genres, dependent: :destroy
  has_many :cautions, through: :story_cautions, dependent: :destroy
end
