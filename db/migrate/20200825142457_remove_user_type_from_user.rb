class RemoveUserTypeFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_type, :string, null: false
  end
end
