class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.integer :prefecture_code, null: false
      t.integer :size, null: false
      t.integer :prefecture_code, null: false
      t.integer :preparation_day, null: false
      t.integer :postage_type, null: false
      t.references :category, foreign_key: true, null: false
      t.references :seller, foreign_key: { to_table: :users }, null: false
      t.references :buyer, foreign_key: { to_table: :users }
      t.integer :trading_status, :integer, null: false, default: 0
      t.timestamps
    end
  end
end
