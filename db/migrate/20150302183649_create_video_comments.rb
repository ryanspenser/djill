class CreateVideoComments < ActiveRecord::Migration
  def change
    create_table :video_comments do |t|
      t.string :comment
      t.integer :video_id

      t.timestamps
    end
  end
end
