class CreateYogaClasses < ActiveRecord::Migration
  def change
    create_table :yoga_classes do |t|
      t.time :time_of_day
      t.string :day_of_week
      t.references :class_location
      t.references :teacher
      t.references :class_type

      t.timestamps
    end
  end
end
