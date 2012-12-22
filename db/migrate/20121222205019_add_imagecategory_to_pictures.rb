class AddImagecategoryToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :imagecategory, :string

  end
end
