class AddUserRefsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :user, null: false, index: true, foreign_key: true
  end
end
