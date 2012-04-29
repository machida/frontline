class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.text :description
      t.datetime :end_at
      t.integer :user_id

      t.timestamps
    end
  end
end