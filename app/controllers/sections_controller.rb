class SectionsController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @course = Course.find(@section.course_id)
  end

  def new
    @section = Section.new
    @course = Course.all
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to  courses_path
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
    @course = Course.all
  end

  def update
    @section= Section.find(params[:id])
    if @section.update(section_params)
      redirect_to course_path(@section.course_id)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to courses_path
  end

  private
  def section_params
    params.require(:section).permit(:title, :week, :course_id)
  end
end
