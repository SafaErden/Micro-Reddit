class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true,
                       length: { minimum: 2, maximum: 12 }, uniqueness: true
  validates :email, presence: true, length: { minimum: 2, maximum: 12 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :date_of_birth, presence: true, length: { minimum: 2, maximum: 12 }
end
