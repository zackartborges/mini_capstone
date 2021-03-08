class DropImageUrls < ActiveRecord::Migration[6.1]
  def change
    drop_table :image_urls
  end
end
