class CreateDebateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :debate_rooms do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.references :market
      t.timestamps
    end
  end
end
