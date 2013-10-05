class AddNotMyFavoriteToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :not_my_favorite, :boolean
  end
end
