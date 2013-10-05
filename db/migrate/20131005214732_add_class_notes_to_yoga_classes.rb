class AddClassNotesToYogaClasses < ActiveRecord::Migration
  def change
    add_column :yoga_classes, :class_notes, :string
  end
end
