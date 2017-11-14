class AddDatetimeToCoursesAndSections < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :created_at, :datetime, null: false
    add_column :courses, :updated_at, :datetime, null: false
    add_column :sections, :created_at, :datetime, null: false
    add_column :sections, :updated_at, :datetime, null: false
  end
end
