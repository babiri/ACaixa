class RemoveCreationAndEditDateFromRegist < ActiveRecord::Migration[5.2]
  def change
    remove_column :regists, :creation_date
    remove_column :regists, :edit_date
  end
end
