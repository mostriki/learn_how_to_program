class SectionsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @course = Course.find(@section.course_id)
  end
end
