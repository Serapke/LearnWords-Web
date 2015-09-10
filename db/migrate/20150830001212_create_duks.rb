class CreateDuks < ActiveRecord::Migration
  def change
    create_table :duks do |t|

      t.string :query
      t.string :answer

      t.timestamps null: false
    end
  end
end
