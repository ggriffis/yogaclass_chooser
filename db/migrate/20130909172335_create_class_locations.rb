class CreateClassLocations < ActiveRecord::Migration
  def change
    create_table :class_locations do |t|
      t.string :place
      t.boolean :close
      t.boolean :close_parking
      t.boolean :free_parking

      t.timestamps
    end
  end
end
