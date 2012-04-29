class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :party_id
      t.text :content
      t.string :state
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
