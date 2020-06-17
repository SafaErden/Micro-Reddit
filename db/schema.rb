# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_200_612_123_403) do
  create_table 'comments', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.integer 'user_id'
    t.integer 'post_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['post_id'], name: 'index_comments_on_post_id'
    t.index ['user_id'], name: 'index_comments_on_user_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'email'
    t.date 'date_of_birth'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
