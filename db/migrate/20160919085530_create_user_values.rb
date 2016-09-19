class CreateUserValues < ActiveRecord::Migration[5.0]
  def change
    create_table :user_values do |t|
      t.references :user, foreign_key: true
      t.references :value, foreign_key: true

      t.timestamps
    end
  end
end
