# rubocop:disable Style/Documentation
# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 2, maximum: 20 }
  validates :body, presence: true, length: { minimum: 2, maximum: 200 }
end
# rubocop:enable Style/Documentation
