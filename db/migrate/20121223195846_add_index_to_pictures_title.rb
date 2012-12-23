class AddIndexToPicturesTitle < ActiveRecord::Migration
  def change
	add_index :pictures, :title, unique: true
  end
end
