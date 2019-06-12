class CreateRegists < ActiveRecord::Migration[5.2]
  def change
    create_table :regists do |t|
      t.integer :caixa
      t.date :creation_date
      t.date :edit_date
      t.integer :five
      t.integer :ten
      t.integer :twenty
      t.integer :fifty
      t.integer :hund
      t.integer :two_hund
      t.integer :five_hund
      t.integer :coin
      t.integer :reforco
      t.integer :payment
      t.integer :caixa_value

      t.timestamps
    end
  end
end
