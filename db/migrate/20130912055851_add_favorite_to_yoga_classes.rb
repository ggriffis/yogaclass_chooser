class AddFavoriteToYogaClasses < ActiveRecord::Migration
  def change
    add_column :yoga_classes, :favorite, :boolean
  end
end
