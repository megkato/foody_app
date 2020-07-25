class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user,         null: false
      t.string     :name,            null: false
      t.text       :description
      t.timestamps
    end
  end
end
