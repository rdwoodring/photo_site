class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.text :newsbody

      t.timestamps
    end
  end
end
