class AddGoodTimeToYogaClass < ActiveRecord::Migration
  def change
    add_column :yoga_classes, :good_time, :boolean
  end
end
