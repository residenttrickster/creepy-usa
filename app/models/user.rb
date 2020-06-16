require 'bcrypt'

class User < ApplicationRecord

    include BCrypt

    has_many :stories, dependent: :destroy
    has_many :locations, through: :stories

    has_secure_password

    validates :username, presence: true 
    validates :username, uniqueness: true 
    validates :bio, presence: true 


    
    
end
