class CreatePictureComments < ActiveRecord::Migration
  def change
    create_table :picture_comments do |t|
      t.string :comment
      t.integer :image_id

      t.timestamps
    end
  end
end
