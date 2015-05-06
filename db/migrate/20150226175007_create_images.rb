class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.boolean :private
      t.string :filename
      t.integer :event_id

      t.timestamps
    end
  end
end
