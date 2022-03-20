class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :name, null: false
      t.text :url
      t.text :img_url
      t.integer :gender
      t.integer :purpose
      t.integer :maker
      t.integer :level

      t.timestamps
    end
    add_index :shoes, :name, unique: true
  end
end
