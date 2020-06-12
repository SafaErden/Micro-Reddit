# rubocop:disable Style/Documentation
# frozen_string_literal: true

class AddColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :integer, references: 'users'
  end
end
# rubocop:enable Style/Documentation
