class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :user_name, :string
  end
end
