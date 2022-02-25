class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :name, null: false, unique: true
      t.text :url
      t.text :img_url

      t.timestamps
    end
    add_index :shoes,[:name], unique: true
  end
end
