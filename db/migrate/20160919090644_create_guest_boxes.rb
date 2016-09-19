class CreateGuestBoxes < ActiveRecord::Migration[5.0]
  def change
    create_table :guest_boxes do |t|
      t.references :guest
      t.references :host
      t.references :debate_room, foreign_key: true
      t.string :status
      t.timestamps
    end
  end
end
