class Caution < ApplicationRecord
  has_many :story_cautions
  has_many :stories, through: :story_cautions
end
