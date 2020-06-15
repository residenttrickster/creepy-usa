class User < ApplicationRecord
    has_many :stories, dependent: :destroy
    has_many :locations, through: :stories
end
