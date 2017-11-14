class RemoveColumnTypeAndAddColumnLessonTypeToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column(:lessons, :lesson_type, :string)
    remove_column(:lessons, :type, :string)
  end
end
