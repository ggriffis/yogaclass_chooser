class AddLikeToYogaClasses < ActiveRecord::Migration
  def change
    add_column :yoga_classes, :like, :boolean
  end
end
