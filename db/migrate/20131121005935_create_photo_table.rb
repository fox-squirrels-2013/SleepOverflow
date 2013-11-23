class CreatePhotoTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :created_at

      t.timestamps
    end
  end
end
