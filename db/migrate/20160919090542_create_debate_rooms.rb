class CreateDebateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :debate_rooms do |t|
      t.string :title
      t.text :description
      t.references :guest
      t.references :host
      t.timestamps
    end
  end
end
