class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2 ,maximum: 12 }, uniqueness: true
  validates :email, presence: true , length: { minimum: 2 ,maximum: 12 }
  validates :date_of_birth, presence: true, length: { minimum: 2 ,maximum: 12 }
end
