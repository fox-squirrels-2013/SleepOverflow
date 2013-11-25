class PhotoIdForReal < ActiveRecord::Migration
  def change
    remove_column :comments, :photos_id
    add_column :comments, :photo_id, :integer
  end
end
