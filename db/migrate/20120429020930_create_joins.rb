class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :party_id
      t.string :state

      t.timestamps
    end
  end
end
