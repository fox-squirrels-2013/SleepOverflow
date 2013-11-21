class CreatePhotoTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :twitter_created

      t.timestamps
    end

  end

end
