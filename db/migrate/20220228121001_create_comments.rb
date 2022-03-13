class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :user, foreign_key: true
      t.references :shoe, foreign_key: true

      t.timestamps
    end

    add_index :comments, [:user_id, :shoe_id], unique: true
  end
end
