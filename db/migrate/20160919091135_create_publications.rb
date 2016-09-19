class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :content
      t.string :theme
      t.references :market, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
