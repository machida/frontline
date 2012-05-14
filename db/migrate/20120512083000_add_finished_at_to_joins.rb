class AddFinishedAtToJoins < ActiveRecord::Migration
  def change
    add_column :joins, :started_at, :datetime
    add_column :joins, :finished_at, :datetime
    add_column :joins, :end_hour, :integer, default: 0
    add_column :joins, :end_min, :integer, default: 0
  end
end
