class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.string :status
      t.references :follower
      t.references :followed
      t.timestamps
    end
  end
end
