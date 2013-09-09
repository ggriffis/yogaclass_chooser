class AddDurationToYogaclass < ActiveRecord::Migration
  def change
    add_column :yoga_classes, :duration, :float
  end
end
