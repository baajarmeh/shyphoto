class AddMoreFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :website, :string
    add_column :users, :bio, :string
    add_column :users, :phone, :string
    add_column :users, :gender, :string
  end
end
