class AddClassCategoryToClassType < ActiveRecord::Migration
  def change
    add_column :class_types, :class_category, :string
  end
end
