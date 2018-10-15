  #
  # create_table "users", force: :cascade do |t|
  #   t.string "name", null: false
  #   t.string "email", null: false
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false

class User < ApplicationRecord
  validates :name, :email, uniqueness: true
end
