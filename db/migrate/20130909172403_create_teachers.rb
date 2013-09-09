class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.boolean :like

      t.timestamps
    end
  end
end
