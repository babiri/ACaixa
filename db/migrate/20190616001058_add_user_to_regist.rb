class AddUserToRegist < ActiveRecord::Migration[5.2]
  def change
    add_reference :regists, :user, foreign_key: true
  end
end
