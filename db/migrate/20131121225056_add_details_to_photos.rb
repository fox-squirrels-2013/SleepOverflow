class AddDetailsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :total_views, :integer
    add_column :photos, :score, :integer
  end
end
