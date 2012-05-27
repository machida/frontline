class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :image

      # if you already have a email column, you have to comment the below line and add the :encrypted_password column manually (see devise/schema.rb).
      t.database_authenticatable
#      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
#      t.token_authenticatable
      t.timestamps
    end
  end
end
