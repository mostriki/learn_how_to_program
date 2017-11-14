class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @section = Section.find(@lesson.section_id)
    @course = Course.find(@section.course_id)
  end
end
