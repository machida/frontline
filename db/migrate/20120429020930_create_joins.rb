class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :party_id
      t.string :state, default: "chore"
      t.datetime :started_at
      t.datetime :finished_at
      t.integer  :end_hour, :default => 0
      t.integer  :end_min, :default => 0

      t.timestamps
    end
  end
end
