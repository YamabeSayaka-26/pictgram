class User < ApplicationRecord
     validates :name,  presence: true, length: { maximum: 15 }
     
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :email, presence: true
     validates :email, format: { with:VALID_EMAIL_REGEX }
     
     VALID_PASSWORD_REGEX = /(?=.*?[a-z])(?=.*?\d)[a-z\d]/i
     validates :password, length: { in: 8..32 }
     validates :password, presence: true
     validates :password, format: { with:VALID_PASSWORD_REGEX }
     has_secure_password
end
