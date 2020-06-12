class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :title, presence: true, length: { minimum: 2, maximum: 20 }
  validates :body, presence: true, length: { minimum: 2, maximum: 200 }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :post_id, presence: true, numericality: { only_integer: true }
end
