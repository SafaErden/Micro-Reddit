# rubocop:disable Style/Documentation
# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.date   :date_of_birth
      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
