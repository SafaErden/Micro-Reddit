# rubocop:disable Style/Documentation
# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.belongs_to :user
      t.belongs_to :post
      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
