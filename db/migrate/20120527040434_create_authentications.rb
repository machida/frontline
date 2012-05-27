class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :screen_name
      t.string :access_token
      t.string :access_secret
      t.string :bio
      t.string :image_url
      t.string :web_url
      t.string :last_tid

      t.timestamps
    end
  end
end
