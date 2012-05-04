class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :party_id
      t.text :content
      t.string :state
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
