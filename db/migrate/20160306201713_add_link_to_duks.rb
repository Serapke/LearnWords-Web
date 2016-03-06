class AddLinkToDuks < ActiveRecord::Migration
  def change
    add_column :duks, :link, :string
  end
end
