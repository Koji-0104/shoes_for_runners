class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :name, null: false
      t.text :url
      t.text :img_url
      t.integer :gender, unsigned: true, null: false
      t.integer :purpose, unsigned: true, null: false
      t.integer :maker, unsigned: true, null: false
      t.integer :level, unsigned: true, null: false

      t.timestamps
    end
    add_index :shoes, :name, unique: true
  end
end
