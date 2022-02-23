class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :name, null: false
      t.text :url
      t.text :img_url

      t.timestamps
    end
  end
end
