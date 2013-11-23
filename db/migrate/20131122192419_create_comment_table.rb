class CreateCommentTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :photos
      t.string :content, :username

      t.timestamps
    end
  end
end
