class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :description
      t.boolean :upcoming	

      t.timestamps
    end
  end
end
