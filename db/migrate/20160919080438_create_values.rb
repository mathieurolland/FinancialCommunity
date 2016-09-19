class CreateValues < ActiveRecord::Migration[5.0]
  def change
    create_table :values do |t|
      t.references :market, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
