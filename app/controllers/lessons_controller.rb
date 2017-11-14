class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @section = Section.find(@lesson.section_id)
    @course = Course.find(@section.course_id)
  end

  def new
    @lesson = Lesson.new
    @section = Section.all
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to  courses_path
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @section = Section.all
  end

  def update
    @lesson= Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to section_path(@lesson.section_id)
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to section_path(@lesson.section_id)
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :content, :section_id, :day, :lesson_type)
  end
end
