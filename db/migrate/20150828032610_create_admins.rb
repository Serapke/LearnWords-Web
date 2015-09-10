class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
  	  t.string :email
      t.string :image
  	  t.string :password_digest

      t.timestamps null: false
    end
  end
end
