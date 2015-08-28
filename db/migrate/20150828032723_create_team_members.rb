class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|

      t.string :name
      t.string :job_title
      t.string :phone
      t.string :location
      t.string :image
      t.string :quote

      t.timestamps null: false
    end
  end
end
