class AddPropertiesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :pseudo, :string
    add_column :users, :gender, :string
    add_column :users, :work_place, :string
    add_column :users, :rating, :integer
    add_column :users, :description, :text
  end
end
