class User < ApplicationRecord
    
    validates :username, presence: true 
    validates :username, uniqueness: true 
    validates :bio, presence: true 


    has_many :stories, dependent: :destroy
    has_many :locations, through: :stories
    
end
