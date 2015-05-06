class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.integer :image_id
      t.integer :user_id
      t.references :image, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
